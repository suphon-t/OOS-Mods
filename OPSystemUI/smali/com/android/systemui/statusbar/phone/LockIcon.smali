.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mFacelockAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockFailAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockRunningType:I

.field private mHasFaceUnlockIcon:Z

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 70
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 74
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f010032

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f010033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 4
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 387
    return v1

    .line 391
    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 392
    const v0, 0x7f080441

    return v0

    .line 393
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    if-ne p2, v0, :cond_2

    .line 394
    const v0, 0x7f08084f

    return v0

    .line 395
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_3

    .line 396
    const v0, 0x7f0801e8

    return v0

    .line 397
    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    .line 398
    const v0, 0x7f08043f

    return v0

    .line 399
    :cond_4
    if-ne p1, v2, :cond_5

    if-ne p2, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 400
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 401
    const v0, 0x7f08043b

    return v0

    .line 402
    :cond_5
    if-ne p2, v2, :cond_8

    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    if-nez p4, :cond_7

    :cond_6
    if-eqz p6, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_8

    .line 404
    :cond_7
    const v0, 0x7f08043d

    return v0

    .line 406
    :cond_8
    return v1
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .line 344
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 372
    :pswitch_0
    const v0, 0x7f080239

    .line 373
    .local v0, "iconRes":I
    goto :goto_1

    .line 367
    .end local v0    # "iconRes":I
    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 368
    const v0, 0x7f080238

    goto :goto_0

    .line 369
    :cond_0
    const v0, 0x7f08043d

    .line 370
    .restart local v0    # "iconRes":I
    :goto_0
    goto :goto_1

    .line 362
    .end local v0    # "iconRes":I
    :pswitch_2
    const v0, 0x7f080237

    .line 363
    .restart local v0    # "iconRes":I
    goto :goto_1

    .line 354
    .end local v0    # "iconRes":I
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 358
    :cond_1
    const v0, 0x7f08027a

    .line 360
    .restart local v0    # "iconRes":I
    goto :goto_1

    .line 351
    .end local v0    # "iconRes":I
    :pswitch_4
    const v0, 0x7f080279

    .line 352
    .restart local v0    # "iconRes":I
    nop

    .line 375
    :goto_1
    nop

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 347
    .end local v0    # "iconRes":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f0801ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 412
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    .line 413
    .local v1, "fingerprintRunning":Z
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 416
    .local v2, "unlockingAllowed":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    const/16 v3, 0xb

    return v3

    .line 422
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    if-nez v3, :cond_1

    .line 424
    const/4 v3, 0x4

    return v3

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const/4 v3, 0x1

    return v3

    .line 427
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    const/4 v3, 0x2

    return v3

    .line 430
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    if-nez v3, :cond_4

    .line 432
    const/4 v3, 0x3

    return v3

    .line 434
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method private updateClickability()V
    .locals 7

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    .line 303
    .local v0, "clickToUnlock":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 305
    .local v1, "clickToForceLock":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 309
    .local v4, "longClickToForceLock":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v5

    .line 312
    .local v5, "facelockRunning":Z
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v3

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 313
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 317
    return-void
.end method

.method private updateIconAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "LockIcon"

    const-string v1, "stop recog anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldPlayFacelockFailAnim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string v0, "LockIcon"

    const-string v1, "play fail anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 292
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "LockIcon"

    const-string v1, "start anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    :cond_5
    :goto_0
    return-void

    .line 261
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 146
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 147
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 105
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 321
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110108

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 327
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11010e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 330
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v0, :cond_1

    .line 332
    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 111
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 99
    :goto_0
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 339
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 340
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 121
    return-void
.end method

.method public setFacelockRunning(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "updateIcon"    # Z

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 132
    :cond_0
    const-string v0, "LockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFacelockRunning , type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updateIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 135
    if-eqz p2, :cond_1

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 139
    :cond_1
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 126
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 116
    return-void
.end method

.method public update()V
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 157
    return-void
.end method

.method public update(Z)V
    .locals 17
    .param p1, "force"    # Z

    move-object/from16 v7, p0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    .line 162
    .local v10, "visible":Z
    if-eqz v10, :cond_1

    .line 163
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 167
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v11

    .line 168
    .local v11, "state":I
    const/4 v0, 0x3

    if-eq v11, v0, :cond_3

    const/4 v0, 0x4

    if-ne v11, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v12, v0

    .line 169
    .local v12, "anyFingerprintIcon":Z
    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v9

    :goto_4
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    .line 170
    move v13, v12

    .line 171
    .local v13, "useAdditionalPadding":Z
    move v14, v12

    .line 172
    .local v14, "trustHidden":Z
    iget v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v11, v0, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    .line 254
    :cond_5
    move/from16 v16, v10

    goto/16 :goto_f

    .line 174
    :cond_6
    :goto_5
    iget v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v5, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    iget-boolean v6, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 175
    move-object v0, v7

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v0

    .line 177
    .local v0, "iconAnimRes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v9

    .line 178
    .local v1, "isAnim":Z
    :goto_6
    const v2, 0x7f08043b

    if-ne v0, v2, :cond_8

    .line 179
    const/4 v12, 0x1

    .line 180
    const/4 v13, 0x1

    .line 181
    const/4 v3, 0x1

    .line 193
    .end local v14    # "trustHidden":Z
    .local v3, "trustHidden":Z
    :goto_7
    move v14, v3

    goto :goto_8

    .line 182
    .end local v3    # "trustHidden":Z
    .restart local v14    # "trustHidden":Z
    :cond_8
    const v3, 0x7f08084f

    if-ne v0, v3, :cond_9

    .line 183
    const/4 v12, 0x1

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v3, 0x1

    goto :goto_7

    .line 186
    :cond_9
    const v3, 0x7f0801e8

    if-ne v0, v3, :cond_a

    .line 187
    const/4 v12, 0x1

    .line 188
    const/4 v13, 0x0

    .line 189
    const/4 v3, 0x0

    goto :goto_7

    .line 193
    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 195
    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 198
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-direct {v7, v11, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 201
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_9
    instance-of v4, v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_c

    .line 202
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_a

    .line 203
    :cond_c
    const/4 v4, 0x0

    .line 204
    .local v4, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 206
    .local v5, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0701fd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 209
    .local v6, "iconWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-ne v8, v5, :cond_d

    .line 211
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-eq v8, v6, :cond_e

    .line 212
    :cond_d
    new-instance v8, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v8, v3, v6, v5}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v3, v8

    .line 214
    :cond_e
    if-eqz v13, :cond_f

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v2, 0x7f0701cb

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b

    .line 217
    :cond_f
    nop

    .line 214
    move v2, v9

    :goto_b
    invoke-virtual {v7, v9, v9, v9, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 218
    nop

    .line 219
    if-eqz v12, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_10
    const/high16 v2, 0x3f000000    # 0.5f

    .line 218
    :goto_c
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 220
    invoke-virtual {v7, v3, v9}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 221
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v2, :cond_11

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f1100fc

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 226
    :cond_11
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 227
    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    .line 228
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 229
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 232
    :cond_12
    const v2, 0x7f08043b

    if-ne v0, v2, :cond_13

    .line 233
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 234
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move/from16 v16, v10

    const-wide/16 v9, 0x320

    .end local v10    # "visible":Z
    .local v16, "visible":Z
    invoke-virtual {v7, v2, v9, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 236
    .end local v16    # "visible":Z
    .restart local v10    # "visible":Z
    :cond_13
    move/from16 v16, v10

    .end local v10    # "visible":Z
    .restart local v16    # "visible":Z
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    :goto_d
    iget v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/16 v8, 0xb

    if-eq v2, v8, :cond_14

    if-ne v11, v8, :cond_14

    .line 241
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v8, 0x7f0801ee

    invoke-virtual {v2, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 242
    :cond_14
    if-eq v11, v8, :cond_15

    .line 243
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_15
    :goto_e
    invoke-direct {v7, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconAnimation(Landroid/view/View;)V

    .line 248
    iput v11, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 249
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 250
    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 254
    .end local v0    # "iconAnimRes":I
    .end local v1    # "isAnim":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v5    # "iconHeight":I
    .end local v6    # "iconWidth":I
    :goto_f
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v14, :cond_16

    const/4 v15, 0x1

    goto :goto_10

    :cond_16
    const/4 v15, 0x0

    :goto_10
    move v0, v15

    .line 255
    .local v0, "trustManaged":Z
    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 257
    return-void
.end method
