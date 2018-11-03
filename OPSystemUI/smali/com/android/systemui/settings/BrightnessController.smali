.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private AUTO_BRIGHTNESS_MINIMUM:I

.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightness:I

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mControlValueInitialized:Z

.field private final mDefaultBacklight:I

.field private final mDefaultBacklightForVr:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private volatile mIsVrModeEnabled:Z

.field private final mLevelIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private mMirrorIcon:Landroid/widget/ImageView;

.field private mMirrorLevelIcon:Landroid/widget/ImageView;

.field private mNewController:Z

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private mSliderMax:I

.field private mSliderValue:I

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "levelIcon"    # Landroid/widget/ImageView;
    .param p3, "icon"    # Landroid/widget/ImageView;
    .param p4, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    .line 110
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    .line 111
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    .line 116
    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:I

    .line 197
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 295
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

    .line 315
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 323
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 370
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 371
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 373
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mLevelIcon:Landroid/widget/ImageView;

    .line 376
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    .line 385
    iput-object p4, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 386
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 387
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$9;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 395
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 397
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 398
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 399
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 400
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    .line 401
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 402
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .line 403
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 407
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 408
    const-string/jumbo v1, "vrmanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 412
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.autobrightctl.animation.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    .line 413
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNewController="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    .line 417
    const-string v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTO_BRIGHTNESS_MINIMUM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->AUTO_BRIGHTNESS_MINIMUM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mNewController:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/BrightnessController;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/BrightnessController;->updateSlider(IZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderNoAnimRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/settings/BrightnessController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    return p1
.end method

.method private animateSliderTo(IZ)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "noAnim"    # Z

    .line 649
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 651
    const-string v0, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not inited, set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 654
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    const-string v0, "StatusBar.BrightnessController"

    const-string v2, "animateSliderTo: cancel anim."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 660
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    .line 661
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateSliderTo: animating from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 668
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 669
    return-void
.end method

.method public static synthetic lambda$animateSliderTo$0(Lcom/android/systemui/settings/BrightnessController;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    .line 664
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    .line 666
    return-void
.end method

.method private setBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 560
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 562
    return-void
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 556
    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    .line 554
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 557
    return-void
.end method

.method private updateIcon(Z)V
    .locals 2
    .param p1, "automatic"    # Z

    .line 571
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mLevelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 573
    return-void
.end method

.method private updateIconInternal(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "automatic"    # Z
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "levelIcon"    # Landroid/widget/ImageView;

    .line 576
    if-eqz p2, :cond_1

    .line 577
    if-eqz p1, :cond_0

    .line 578
    const v0, 0x7f080572

    goto :goto_0

    .line 579
    :cond_0
    const v0, 0x7f080570

    .line 577
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    :cond_1
    if-eqz p3, :cond_7

    .line 583
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    const v1, 0x7f080576

    const v2, 0x7f080574

    const v3, 0x7f080575

    if-eqz v0, :cond_4

    .line 584
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    if-gt v0, v4, :cond_2

    .line 585
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 586
    :cond_2
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    .line 587
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 589
    :cond_3
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 592
    :cond_4
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    if-gt v0, v4, :cond_5

    .line 593
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 594
    :cond_5
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderMax:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    .line 595
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 597
    :cond_6
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    :cond_7
    :goto_1
    return-void
.end method

.method private updateSlider(IZZ)V
    .locals 3
    .param p1, "val"    # I
    .param p2, "inVrMode"    # Z
    .param p3, "noAnim"    # Z

    .line 617
    if-eqz p2, :cond_0

    .line 618
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 619
    .local v0, "min":I
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .local v1, "max":I
    goto :goto_0

    .line 621
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 622
    .restart local v0    # "min":I
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 626
    .restart local v1    # "max":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 632
    return-void

    .line 634
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v2

    .line 636
    .local v2, "sliderVal":I
    iput v2, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 641
    invoke-direct {p0, v2, p3}, Lcom/android/systemui/settings/BrightnessController;->animateSliderTo(IZ)V

    .line 643
    return-void
.end method

.method private updateVrMode(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 605
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 606
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    .line 607
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$11;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 7
    .param p1, "toggleSlider"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I
    .param p5, "stopTracking"    # Z

    .line 476
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slider.onChanged value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", tracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", auto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iput p4, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderValue:I

    .line 488
    iput-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mTracking:Z

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 492
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_1

    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 503
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_3

    .line 504
    const/16 v0, 0x1f2

    .line 505
    .local v0, "metric":I
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 506
    .local v1, "min":I
    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .line 507
    .local v2, "max":I
    const-string v3, "screen_brightness_for_vr"

    .local v3, "setting":Ljava/lang/String;
    goto :goto_1

    .line 509
    .end local v0    # "metric":I
    .end local v1    # "min":I
    .end local v2    # "max":I
    .end local v3    # "setting":Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_4

    .line 510
    const/16 v0, 0xdb

    goto :goto_0

    .line 511
    :cond_4
    const/16 v0, 0xda

    .line 512
    .restart local v0    # "metric":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 513
    .restart local v1    # "min":I
    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 514
    .restart local v2    # "max":I
    const-string v3, "screen_brightness"

    .line 517
    .restart local v3    # "setting":Ljava/lang/String;
    :goto_1
    invoke-static {p4, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v4

    .line 519
    .local v4, "val":I
    iput v4, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightness:I

    .line 522
    if-eqz p5, :cond_5

    .line 523
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 526
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 527
    if-nez p2, :cond_6

    .line 528
    new-instance v5, Lcom/android/systemui/settings/BrightnessController$10;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/systemui/settings/BrightnessController$10;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 536
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 537
    .local v6, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v6}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    .line 538
    .end local v6    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    goto :goto_2

    .line 539
    :cond_7
    return-void
.end method

.method public onClickAutomaticIcon()V
    .locals 3

    .line 674
    const-string v0, "quick_bright"

    const-string v1, "auto"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :cond_0
    const/4 v0, 0x1

    .line 676
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setMode(I)V

    .line 679
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0
    .param p1, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .line 432
    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    const-string v0, "StatusBar.BrightnessController"

    const-string v1, "registerCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to register VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 451
    return-void
.end method

.method public setMirrorView(Landroid/view/View;)V
    .locals 1
    .param p1, "mirror"    # Landroid/view/View;

    .line 684
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorIcon:Landroid/widget/ImageView;

    .line 685
    const v0, 0x7f0a008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMirrorLevelIcon:Landroid/widget/ImageView;

    .line 686
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 3

    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    const-string v0, "StatusBar.BrightnessController"

    const-string/jumbo v1, "unregisterCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 470
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    .line 471
    return-void
.end method
