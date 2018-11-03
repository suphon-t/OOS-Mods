.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# static fields
.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDisplay:Landroid/view/Display;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mGcRunnable:Ljava/lang/Runnable;

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field private final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field mUm:Landroid/os/UserManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 88
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 89
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    .line 124
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 126
    new-instance v0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$14WNoAPwhU0GwlQXHqE_l3lK1kI;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$14WNoAPwhU0GwlQXHqE_l3lK1kI;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 134
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 137
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 138
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 139
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 140
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    .line 141
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    .line 142
    const-string v0, "dreams"

    .line 143
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050002

    .line 152
    .local v1, "wId":I
    const v2, 0x1050001

    .line 153
    .local v2, "hId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 157
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 165
    const-class v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 166
    .local v3, "userInfoController":Lcom/android/systemui/statusbar/policy/UserInfoController;
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    monitor-enter v0

    .line 174
    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 177
    :cond_0
    sget-object v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 173
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z
    .locals 5
    .param p1, "stackInfo"    # Landroid/app/ActivityManager$StackInfo;
    .param p2, "fullscreenStackInfo"    # Landroid/app/ActivityManager$StackInfo;

    .line 245
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 246
    .local v2, "stackVisibleNotOccluded":Z
    :goto_1
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 247
    iget-boolean v3, p2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v3, :cond_2

    iget v3, p2, Landroid/app/ActivityManager$StackInfo;->position:I

    iget v4, p1, Landroid/app/ActivityManager$StackInfo;->position:I

    if-le v3, v4, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 249
    .local v3, "isFullscreenStackOccludingg":Z
    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    and-int/2addr v2, v0

    .line 251
    .end local v3    # "isFullscreenStackOccludingg":Z
    :cond_4
    return v2
.end method

.method public static synthetic lambda$awakenDreamsAsync$4(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return-void
.end method

.method public static synthetic lambda$setPipVisibility$3(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemServicesProxy"

    const-string v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setRecentsVisibility$2(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemServicesProxy"

    const-string v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$startActivityAsUserAsync$1(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    .line 432
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 431
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public awakenDreamsAsync()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$qne41-2ZLAnF5q0szRXUTgxl7BA;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$qne41-2ZLAnF5q0szRXUTgxl7BA;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 527
    return-void
.end method

.method public gc()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 387
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 388
    .local v0, "smallestSizeRange":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 389
    .local v1, "largestSizeRange":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 390
    iget v2, v0, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .line 397
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-object v0

    .line 400
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 401
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 402
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    return-object v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 462
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 464
    .local v1, "dividerWindowWidth":I
    const v2, 0x1050089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 466
    .local v2, "dividerInsets":I
    const/4 v3, 0x2

    mul-int/2addr v3, v2

    sub-int v3, v1, v3

    return v3
.end method

.method public getProcessUser()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 3

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outStableInsets"    # Landroid/graphics/Rect;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 4

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 411
    .local v0, "windowRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-object v0

    .line 415
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 416
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 417
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v1, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v3}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    move-object v1, v2

    .line 420
    :cond_1
    if-eqz v1, :cond_2

    .line 421
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public hasDockedTask()Z
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 292
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    .line 294
    .local v2, "userId":I
    const/4 v3, 0x0

    .line 295
    .local v3, "hasUserTask":Z
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    if-nez v3, :cond_2

    .line 296
    iget-object v6, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v6, v6, v4

    if-ne v6, v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    move v3, v6

    .line 295
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 298
    .end local v4    # "i":I
    :cond_2
    return v3

    .line 300
    .end local v2    # "userId":I
    .end local v3    # "hasUserTask":Z
    :cond_3
    return v1
.end method

.method public hasSoftNavigationBar()Z
    .locals 1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransposedNavigationBar()Z
    .locals 2

    .line 320
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 321
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 322
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDreaming()Z
    .locals 3

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemServicesProxy"

    const-string v2, "Failed to query dream manager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isInSafeMode()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 12
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v2, 0x0

    .line 208
    .local v2, "homeStackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v3, 0x0

    .line 209
    .local v3, "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v4, 0x0

    .line 210
    .local v4, "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    .local v2, "i":I
    .local v3, "homeStackInfo":Landroid/app/ActivityManager$StackInfo;
    .local v4, "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    .local v5, "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v2, v6, :cond_5

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$StackInfo;

    .line 212
    .local v6, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 213
    .local v8, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v9

    .line 214
    .local v9, "activityType":I
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    .line 215
    .local v10, "windowingMode":I
    if-nez v3, :cond_1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    .line 216
    move-object v3, v6

    goto :goto_1

    .line 217
    :cond_1
    if-nez v4, :cond_3

    if-ne v9, v7, :cond_3

    if-eq v10, v7, :cond_2

    const/4 v7, 0x4

    if-ne v10, v7, :cond_3

    .line 220
    :cond_2
    move-object v4, v6

    goto :goto_1

    .line 221
    :cond_3
    if-nez v5, :cond_4

    const/4 v7, 0x3

    if-ne v9, v7, :cond_4

    .line 222
    move-object v5, v6

    .line 210
    .end local v6    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v8    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v9    # "activityType":I
    .end local v10    # "windowingMode":I
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "i":I
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v2

    .line 227
    .local v2, "homeStackVisibleNotOccluded":Z
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v6

    .line 229
    .local v6, "recentsStackVisibleNotOccluded":Z
    if-eqz p1, :cond_6

    .line 230
    iput-boolean v2, p1, Landroid/util/MutableBoolean;->value:Z

    .line 232
    :cond_6
    if-eqz v5, :cond_7

    .line 233
    iget-object v8, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 234
    .local v8, "topActivity":Landroid/content/ComponentName;
    :goto_2
    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    .line 235
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.systemui"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    .line 236
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_8

    .line 234
    move v1, v7

    goto :goto_3

    .line 236
    :cond_8
    nop

    .line 234
    :goto_3
    return v1

    .line 237
    .end local v0    # "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v2    # "homeStackVisibleNotOccluded":Z
    .end local v3    # "homeStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v4    # "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "recentsStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v6    # "recentsStackVisibleNotOccluded":Z
    .end local v8    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isSystemUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 340
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p3, "deviceId"    # I

    .line 471
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p2, p3}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 472
    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$yx6uKMR_Ve4h8p3CZXLJmEmcWpI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$yx6uKMR_Ve4h8p3CZXLJmEmcWpI;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 508
    return-void
.end method

.method public setRecentsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 488
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$ve6L74feVQWkpga-S7KU2FyhUuE;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 495
    return-void
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    return v1

    .line 269
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 433
    return-void
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .line 437
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 441
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 440
    :goto_0
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
