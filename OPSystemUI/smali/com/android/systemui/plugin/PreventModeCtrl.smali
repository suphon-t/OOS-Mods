.class public Lcom/android/systemui/plugin/PreventModeCtrl;
.super Lcom/android/systemui/plugin/BaseCtrl;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;
    }
.end annotation


# static fields
.field private static mPreventModeActive:Z

.field private static mPreventModeNoBackground:Z

.field private static mProximitySensorEnabled:Z


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/widget/ImageView;

.field private mBouncer:Z

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyLockMode:I

.field private mKeyguardIsShowing:Z

.field private mKeyguardIsVisible:Z

.field private mOPSceneModeObserver:Lcom/oneplus/scene/OPSceneModeObserver;

.field private mObject:Ljava/lang/Object;

.field mPMView:Lcom/android/systemui/plugin/PreventModeView;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 45
    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    .line 46
    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/plugin/BaseCtrl;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->DEBUG:Z

    .line 39
    const-string v0, "PreventModeCtrl"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBouncer:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsShowing:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    .line 161
    new-instance v0, Lcom/android/systemui/plugin/PreventModeCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$1;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->enableProximitySensorInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensorInternal()V

    return-void
.end method

.method private bypassPreventMode()Z
    .locals 2

    .line 398
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 399
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraForeground()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mOPSceneModeObserver:Lcom/oneplus/scene/OPSceneModeObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mOPSceneModeObserver:Lcom/oneplus/scene/OPSceneModeObserver;

    .line 400
    invoke-virtual {v1}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 399
    :goto_0
    return v1
.end method

.method private disableProximitySensorInternal()V
    .locals 4

    .line 281
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableProximitySensor, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 287
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 292
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method private enableProximitySensorInternal()V
    .locals 6

    .line 222
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 228
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 229
    const-string v0, "PreventModeCtrl"

    const-string v1, "enableProximitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 233
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 235
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 240
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .line 388
    :try_start_0
    const-string v0, "input_method"

    .line 389
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 388
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 390
    .local v0, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PreventModeCtrl"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isPreventModeEnabled()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/OPUtils;->isPreventModeEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startRootAnimation()V
    .locals 5

    .line 296
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsShowing:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->bypassPreventMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 301
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_key_lock_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->hideSoftInput()V

    .line 303
    const-string v1, "PreventModeCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRootAnimation, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 308
    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    .line 309
    const-string v1, "PreventModeCtrl"

    const-string v3, "panel alpha to 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 315
    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 319
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    .line 324
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 325
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/plugin/PreventModeCtrl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$2;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/plugin/PreventModeCtrl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$3;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 357
    return-void

    .line 297
    .end local v0    # "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/PreventModeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    return-void
.end method

.method public disableProximitySensor()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 1

    .line 376
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method public isPreventModeNoBackground()Z
    .locals 1

    .line 381
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 1

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 94
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 99
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 128
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBouncer:Z

    .line 133
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 141
    return-void
.end method

.method public onPanelExpandedChange(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .line 405
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelExpandedChange expand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPreventModeActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/PreventModeView;->setAlpha(F)V

    .line 409
    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    :cond_0
    return-void
.end method

.method public onStartCtrl()V
    .locals 3

    .line 73
    const-string v0, "PreventModeCtrl"

    const-string v1, "onStartCtrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 75
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a0329

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugin/PreventModeView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    .line 76
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a0309

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    if-nez v0, :cond_0

    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPMView == null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeView;->init()V

    .line 80
    new-instance v0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;Lcom/android/systemui/plugin/PreventModeCtrl$1;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 84
    const-class v0, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OPSceneModeObserver;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mOPSceneModeObserver:Lcom/oneplus/scene/OPSceneModeObserver;

    .line 85
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 361
    const-string v0, "PreventModeCtrl"

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

    .line 362
    if-eqz p1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/util/ImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :goto_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 145
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardShowing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsShowing:Z

    .line 147
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 150
    :cond_0
    return-void
.end method

.method public stopPreventMode()V
    .locals 6

    .line 253
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "PreventModeCtrl"

    const-string/jumbo v1, "stopPreventMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugin/PreventModeView;->setVisibility(I)V

    .line 261
    sget-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    .line 263
    const-string v2, "PreventModeCtrl"

    const-string v3, "panel alpha to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    .line 267
    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 269
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 270
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    goto :goto_0

    .line 275
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 278
    .end local v0    # "identity":J
    :cond_2
    :goto_0
    return-void
.end method
