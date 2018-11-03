.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationRunner"
.end annotation


# instance fields
.field private mInstantCollapsePanel:Z

.field private final mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

.field private final mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mSyncRtTransactionApplier:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

.field private final mWindowCrop:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
    .param p2, "sourceNofitication"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mInstantCollapsePanel:Z

    .line 118
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 120
    new-instance v0, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSyncRtTransactionApplier:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

    .line 121
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mInstantCollapsePanel:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    .param p1, "x1"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/RemoteAnimationTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    .param p1, "x1"    # Landroid/view/RemoteAnimationTarget;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToWindow(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    .param p1, "x1"    # Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->setExpandAnimationRunning(Z)V

    return-void
.end method

.method private applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 243
    return-void
.end method

.method private applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 1
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/NotificationListContainer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationListContainer;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 239
    return-void
.end method

.method private applyParamsToWindow(Landroid/view/RemoteAnimationTarget;)V
    .locals 9
    .param p1, "app"    # Landroid/view/RemoteAnimationTarget;

    .line 246
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 247
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->top:I

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->left:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget v3, v3, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    new-instance v8, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v2, Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v2, v1}, Lcom/android/systemui/shared/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mWindowCrop:Landroid/graphics/Rect;

    iget v6, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;FLandroid/graphics/Matrix;Landroid/graphics/Rect;I)V

    .line 251
    .local v1, "params":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSyncRtTransactionApplier:Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 252
    return-void
.end method

.method private getPrimaryRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;
    .locals 5
    .param p1, "remoteAnimationTargets"    # [Landroid/view/RemoteAnimationTarget;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "primary":Landroid/view/RemoteAnimationTarget;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 216
    .local v3, "app":Landroid/view/RemoteAnimationTarget;
    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v4, :cond_0

    .line 217
    move-object v0, v3

    .line 218
    goto :goto_1

    .line 215
    .end local v3    # "app":Landroid/view/RemoteAnimationTarget;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    :goto_1
    return-object v0
.end method

.method private invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 206
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onAnimationCancelled$1(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$300(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchAnimationCancelled()V

    .line 259
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$0(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 13
    .param p1, "remoteAnimationTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "iRemoteAnimationFinishedCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->getPrimaryRemoteAnimationTarget([Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    .line 130
    .local v6, "primary":Landroid/view/RemoteAnimationTarget;
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$300(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    .line 132
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 133
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->setExpandAnimationRunning(Z)V

    .line 137
    iget-object v1, v6, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_1

    iget-object v1, v6, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    .line 139
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mInstantCollapsePanel:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mInstantCollapsePanel:Z

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapseWithDuration(I)V

    .line 143
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 144
    .local v8, "anim":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startPosition:[I

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startTranslationZ:F

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 149
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v0

    .line 150
    .local v0, "parentClip":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->parentStartClipTopAmount:I

    .line 153
    if-eqz v0, :cond_3

    .line 154
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 155
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 156
    .local v1, "childClip":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->startClipTopAmount:I

    .line 161
    .end local v0    # "parentClip":I
    .end local v1    # "childClip":F
    :cond_3
    iget-object v0, v6, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 162
    .local v9, "targetWidth":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 163
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipBottomAmount()I

    move-result v1

    sub-int v10, v0, v1

    .line 164
    .local v10, "notificationHeight":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v11

    .line 165
    .local v11, "notificationWidth":I
    const-wide/16 v0, 0x190

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    new-instance v12, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;

    move-object v0, v12

    move-object v1, p0

    move v2, v11

    move v3, v9

    move-object v4, v6

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$1;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;IILandroid/view/RemoteAnimationTarget;I)V

    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$300(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V

    .line 201
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setExpandAnimationRunning(Z)V
    .locals 3
    .param p1, "running"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingNotification(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setExpandAnimationRunning(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->this$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/NotificationListContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 229
    if-nez p1, :cond_1

    .line 230
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotification(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 231
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->applyParamsToNotificationList(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V

    .line 234
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$M-3NAwVAMqbtd1nWxQdGu3JgCNY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$M-3NAwVAMqbtd1nWxQdGu3JgCNY;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2
    .param p1, "remoteAnimationTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "iRemoteAnimationFinishedCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->mSourceNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$AnimationRunner$sNLXzFzCbt6n0LlixbKU_lp1tVA;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method
