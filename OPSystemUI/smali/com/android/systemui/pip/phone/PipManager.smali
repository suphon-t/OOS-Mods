.class public Lcom/android/systemui/pip/phone/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field private static sPipController:Lcom/android/systemui/pip/phone/PipManager;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

.field private mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    .line 72
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$1;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipManager;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/pip/phone/PipManager;
    .locals 1

    .line 221
    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    .line 224
    :cond_0
    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 228
    const-string v0, "  "

    .line 229
    .local v0, "innerPrefix":Ljava/lang/String;
    const-string v1, "PipManager"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/shared/system/InputConsumerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 175
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PipManager"

    const-string v2, "Failed to register pinned stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 184
    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getPipInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    .line 186
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipMediaController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 187
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 189
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 191
    new-instance v0, Lcom/android/systemui/pip/phone/PipAppOpsListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 192
    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/pip/phone/PipAppOpsListener;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 193
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ExpandPipEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    .line 208
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    .line 201
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    .line 215
    return-void
.end method
