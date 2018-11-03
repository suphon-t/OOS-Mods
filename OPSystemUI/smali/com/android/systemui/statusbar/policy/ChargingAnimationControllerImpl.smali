.class public Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "ChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ChargingAnimationController;


# static fields
.field private static mPreventModeNoBackground:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mAnimationStarted:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBouncerShow:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationState:I

.field private mFastCharging:Z

.field private mHandler:Landroid/os/Handler;

.field private mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

.field private mPreventViewShow:Z

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWarpFastCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "ChargingAnimationControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 57
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCurrentAnimationState:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    .line 68
    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 127
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 128
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 129
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->registerReceiver()V

    .line 137
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p1
.end method

.method private genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a04af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setChargingAnimationController(Lcom/android/systemui/statusbar/policy/ChargingAnimationController;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method static synthetic lambda$animationEnd$1(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0
    .param p0, "style"    # I
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 241
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0
    .param p0, "style"    # I
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 228
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationStart(I)V

    return-void
.end method

.method private updateScrim()V
    .locals 5

    .line 215
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 216
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateScrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->geScrimtColor()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, "scrimColor":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->updaetScrimColor(I)V

    .line 223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f040468

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->updateColors(I)V

    .line 224
    return-void

    .line 217
    .end local v1    # "scrimColor":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "can\'t updateScrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 5
    .param p1, "style"    # I

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 244
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    if-eqz v1, :cond_0

    .line 245
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    .line 246
    .local v1, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 247
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    .line 250
    .end local v1    # "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_0
    return-void
.end method

.method public animationStart(I)V
    .locals 4
    .param p1, "style"    # I

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 232
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    .line 233
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    .line 234
    .local v1, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 237
    .end local v1    # "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mAnimationStarted:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->onBatteryLevelChanged(IZZ)V

    .line 183
    :cond_0
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 9
    .param p1, "fastChargeType"    # I

    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 188
    .local v2, "fastCharge":Z
    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 190
    .local v4, "warpFastCharge":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    if-eq v2, v5, :cond_2

    .line 191
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFastChargeChanged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    .line 194
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v5, :cond_2

    .line 195
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->prepaerAsset()V

    .line 196
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 197
    .local v5, "msg":Landroid/os/Message;
    const/16 v6, 0x3e8

    iput v6, v5, Landroid/os/Message;->what:I

    .line 198
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    .end local v5    # "msg":Landroid/os/Message;
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq v4, v5, :cond_4

    .line 205
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    .line 206
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v1

    nop

    .line 207
    .local v0, "isScreenTurnedOn":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez v1, :cond_4

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->updateScrim()V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->startAnimation()V

    .line 212
    .end local v0    # "isScreenTurnedOn":Z
    :cond_4
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange: bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/util/ImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_2
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
