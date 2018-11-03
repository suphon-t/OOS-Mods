.class public Lcom/android/systemui/statusbar/car/CarStatusBar;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "CarStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field public static final ENABLE_HVAC_CONNECTION:Z


# instance fields
.field private mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

.field private mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

.field private mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

.field private mDeviceIsProvisioned:Z

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

.field private mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mLeftNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

.field private final mQueueLock:Ljava/lang/Object;

.field private mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mRightNavigationBarWindow:Landroid/view/ViewGroup;

.field private mShowBottom:Z

.field private mShowLeft:Z

.field private mShowRight:Z

.field private mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "android.car.hvac.demo"

    .line 59
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/car/CarStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->restartNavBars()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarFacetButtonController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    return-object v0
.end method

.method private attachNavBarWindows()V
    .locals 10

    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e3

    const v6, 0x840028

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 294
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "CarNavigationBar"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    const/high16 v2, 0x400000

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 301
    .local v0, "width":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const v8, 0x840028

    const/4 v9, -0x3

    move-object v4, v3

    move v5, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 309
    .local v3, "leftlp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "LeftCarNavigationBar"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 311
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 312
    const/4 v4, 0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 313
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .end local v0    # "width":I
    .end local v3    # "leftlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070108

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 318
    .restart local v0    # "width":I
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const v8, 0x840028

    const/4 v9, -0x3

    move-object v4, v3

    move v5, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 326
    .local v3, "rightlp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "RightCarNavigationBar"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 328
    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 329
    const/4 v1, 0x5

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .end local v0    # "width":I
    .end local v3    # "rightlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method private buildBottomBar(I)V
    .locals 2
    .param p1, "layout"    # I

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    .line 346
    return-void

    .line 342
    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build botom nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildLeft(I)V
    .locals 2
    .param p1, "layout"    # I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    .line 356
    return-void

    .line 352
    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build left nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildNavBarContent()V
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    if-eqz v0, :cond_1

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0044

    goto :goto_0

    .line 252
    :cond_0
    const v0, 0x7f0d0045

    .line 251
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildBottomBar(I)V

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    if-eqz v0, :cond_3

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d003e

    goto :goto_1

    .line 257
    :cond_2
    const v0, 0x7f0d003f

    .line 256
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildLeft(I)V

    .line 260
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_5

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0d004b

    goto :goto_2

    .line 262
    :cond_4
    const v0, 0x7f0d004c

    .line 261
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildRight(I)V

    .line 264
    :cond_5
    return-void
.end method

.method private buildNavBarWindows()V
    .locals 3

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    const/4 v1, 0x0

    const v2, 0x7f0d00e9

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    .line 281
    :cond_2
    return-void
.end method

.method private buildRight(I)V
    .locals 2
    .param p1, "layout"    # I

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    .line 366
    return-void

    .line 363
    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build right nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 2

    .line 233
    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    return-object v0
.end method

.method private getDefaultWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x1080264

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$makeStatusBarView$0(Lcom/android/systemui/statusbar/car/CarStatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 224
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method private restartNavBars()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->removeAll()V

    .line 124
    sget-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    if-eqz v0, :cond_0

    .line 125
    const-class v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->removeAllComponents()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarContent()V

    .line 142
    return-void
.end method


# virtual methods
.method public animateExpandNotificationsPanel()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseAllImmediately()V

    .line 506
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 507
    return-void
.end method

.method protected createNavigationBar()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarWindows()V

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarContent()V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->attachNavBarWindows()V

    .line 247
    return-void
.end method

.method protected createUserSwitcher()V
    .locals 4

    .line 464
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 465
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 466
    .local v0, "userSwitcherController":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a015c

    .line 468
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewStub;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    goto :goto_0

    .line 470
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    .line 472
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 375
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 376
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    const-string v0, "  mTaskStackListener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    const-string v0, "  mCarFacetButtonController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 382
    const-string v0, "  mFullscreenUserSwitcher="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    const-string v0, "  mCarBatteryController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 385
    const-string v0, "  mBatteryMeterView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 387
    const-string v0, "  mConnectedDeviceSignalController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    const-string v0, "  mNavigationBarView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 397
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 399
    const-string v0, "SharedPreferences:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 402
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 403
    :cond_1
    return-void

    .line 377
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideBatteryView()V
    .locals 3

    .line 432
    const-string v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 439
    :cond_1
    return-void
.end method

.method public hideKeyguard()Z
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    move-result v0

    .line 164
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    .line 173
    :cond_2
    return v0
.end method

.method protected makeStatusBarView()V
    .locals 3

    .line 217
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    .line 223
    .local v0, "manager":Lcom/android/systemui/fragments/FragmentHostManager;
    const-string v1, "CollapsedStatusBarFragment"

    new-instance v2, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 230
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 515
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDensityOrFontScaleChanged()V

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 476
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUserSwitched(I)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSwitched(I)V

    .line 480
    :cond_0
    return-void
.end method

.method setNavBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    :cond_2
    return-void
.end method

.method public showBatteryView()V
    .locals 3

    .line 421
    const-string v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 428
    :cond_1
    return-void
.end method

.method public showKeyguard()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    .line 189
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    .line 90
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->startListening()V

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "CarStatusBar"

    const-string v1, "Connecting to HVAC service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-class v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->connectToCarService()V

    .line 102
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    .line 103
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v1, Lcom/android/systemui/statusbar/car/CarStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/CarStatusBar$1;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void
.end method

.method public updateKeyguardState(ZZ)V
    .locals 2
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .line 484
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_1

    .line 486
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->show()V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->hide()V

    .line 492
    :cond_1
    :goto_0
    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0
    .param p1, "metaDataChanged"    # Z
    .param p2, "allowEnterAnimation"    # Z

    .line 497
    return-void
.end method
