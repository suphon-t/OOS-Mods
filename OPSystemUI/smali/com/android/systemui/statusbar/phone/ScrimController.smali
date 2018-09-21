.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAnimateChange:Z

.field private mAnimationDelay:J

.field protected mAnimationDuration:J

.field private mBlankScreen:Z

.field private mBlankingTransitionRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehindAlpha:F

.field private mCurrentBehindTint:I

.field private mCurrentInFrontAlpha:F

.field private mCurrentInFrontTint:I

.field private mDarkenWhileDragging:Z

.field private mDeferFinishedListener:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mExpansionAffectsAlpha:Z

.field private mExpansionFraction:F

.field private mForceHideScrims:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardOccluded:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mNeedsDrawableColorUpdate:Z

.field private mNotificationDensity:F

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPendingFrameCallback:Ljava/lang/Runnable;

.field private mScreenBlankingCallbackCalled:Z

.field private mScreenOn:Z

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field protected mScrimBehindAlpha:F

.field protected mScrimBehindAlphaKeyguard:F

.field protected mScrimBehindAlphaResValue:F

.field protected final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrimVisibleListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimsVisibility:I

.field private mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mTracking:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeld:Z

.field private mWallpaperSupportsAmbientMode:Z

.field private mWallpaperVisibilityTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-string v0, "ScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)V
    .locals 7
    .param p1, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p5, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p6, "alarmManager"    # Landroid/app/AlarmManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            ")V"
        }
    .end annotation

    .line 173
    .local p3, "scrimStateListener":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/systemui/statusbar/phone/ScrimState;Ljava/lang/Float;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;>;"
    .local p4, "scrimVisibleListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 128
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 138
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 142
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 174
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 175
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 176
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    .line 177
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    .line 183
    new-instance v1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-string v3, "hide_aod_wallpaper"

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p6, v2, v3, v4}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 188
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 189
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 191
    const-class v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v1, p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getFallbackColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 203
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    .line 204
    .local v0, "states":[Lcom/android/systemui/statusbar/phone/ScrimState;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 205
    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ScrimState;->init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 206
    aget-object v3, v0, v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ScrimView;->setDefaultFocusHighlightEnabled(Z)V

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ScrimView;->setDefaultFocusHighlightEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method private applyExpansionToAlpha()V
    .locals 8

    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 415
    .local v0, "behindFraction":F
    float-to-double v4, v0

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 416
    mul-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 417
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 418
    .end local v0    # "behindFraction":F
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_3

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 422
    .local v0, "interpolatedFract":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationDensity:F

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha(F)F

    move-result v1

    .line 423
    .local v1, "alphaBehind":F
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v4, :cond_2

    .line 424
    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 426
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {v3, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 430
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 433
    .end local v0    # "interpolatedFract":F
    .end local v1    # "alphaBehind":F
    :cond_3
    :goto_0
    return-void
.end method

.method private blankDisplay()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 799
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    .line 822
    return-void
.end method

.method private dispatchScrimState(F)V
    .locals 4
    .param p1, "alpha"    # F

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ScrimView;->getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method private dispatchScrimsVisible()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 563
    const/4 v0, 0x0

    goto :goto_1

    .line 565
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 561
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 565
    .local v0, "currentScrimVisibility":I
    :goto_1
    nop

    .line 568
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_3

    .line 569
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 572
    :cond_3
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 2
    .param p1, "scrim"    # Landroid/view/View;

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 670
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    return v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 672
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    return v0

    .line 674
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown scrim view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCurrentScrimTint(Landroid/view/View;)I
    .locals 2
    .param p1, "scrim"    # Landroid/view/View;

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 680
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    return v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_1

    .line 682
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    return v0

    .line 684
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown scrim view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInterpolatedFraction()F
    .locals 10

    .line 575
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 577
    .local v0, "frac":F
    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v2

    .line 578
    .end local v0    # "frac":F
    .local v1, "frac":F
    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    .line 579
    return v0

    .line 582
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double/2addr v2, v4

    sub-double/2addr v6, v2

    double-to-float v0, v6

    return v0
.end method

.method private holdWakeLock()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    goto :goto_0

    .line 355
    :cond_0
    const-string v0, "ScrimController"

    const-string v1, "Cannot hold wake lock, it has not been set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    :goto_0
    return-void
.end method

.method private isAnimating(Landroid/view/View;)Z
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .line 722
    const v0, 0x7f0a037c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$blankDisplay$1(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 1

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 807
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 811
    return-void
.end method

.method public static synthetic lambda$blankDisplay$2(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 805
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 815
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    .line 816
    .local v0, "delay":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 817
    const-string v1, "ScrimController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fading out scrims with delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    return-void
.end method

.method public static synthetic lambda$startScrimAnimation$0(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "initialScrimTint"    # I
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 631
    const v0, 0x7f0a037e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 632
    .local v0, "startAlpha":F
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 633
    .local v1, "animAmount":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v2

    .line 634
    .local v2, "finalScrimTint":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v3

    .line 635
    .local v3, "finalScrimAlpha":F
    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    .line 636
    .local v4, "alpha":F
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    .line 637
    invoke-static {p2, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 638
    .local v5, "tint":I
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 640
    return-void
.end method

.method private onFinished()V
    .locals 3

    .line 705
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    .line 707
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_2

    .line 716
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 717
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    .line 719
    :cond_2
    return-void
.end method

.method private setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .locals 10
    .param p1, "scrim"    # Landroid/view/View;

    .line 392
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    goto :goto_0

    .line 395
    :cond_0
    const v0, 0x7f0a037c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 396
    .local v0, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 397
    .local v1, "alpha":F
    const v2, 0x7f0a037d

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 398
    .local v3, "previousEndValue":F
    const v4, 0x7f0a037e

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 399
    .local v5, "previousStartValue":F
    sub-float v6, v1, v3

    .line 400
    .local v6, "relativeDiff":F
    add-float v7, v5, v6

    .line 401
    .local v7, "newStartValue":F
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 402
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 403
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 405
    .end local v0    # "previousAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "alpha":F
    .end local v3    # "previousEndValue":F
    .end local v5    # "previousStartValue":F
    .end local v6    # "relativeDiff":F
    .end local v7    # "newStartValue":F
    :goto_0
    return-void
.end method

.method private setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 3
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "alpha"    # F

    .line 595
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    .line 601
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 602
    return-void
.end method

.method private setScrimBehindAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 588
    return-void
.end method

.method private setScrimInFrontAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 592
    return-void
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .locals 4
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "current"    # F

    .line 627
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 628
    .local v0, "anim":Landroid/animation/ValueAnimator;
    instance-of v1, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    goto :goto_0

    .line 629
    :cond_0
    const/4 v1, 0x0

    .line 630
    .local v1, "initialScrimTint":I
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 641
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 643
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    const v2, 0x7f0a037e

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 662
    const v2, 0x7f0a037d

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 664
    const v2, 0x7f0a037c

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 665
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 666
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "alpha"    # F

    .line 735
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    .line 737
    .local v0, "currentAlpha":F
    const v1, 0x7f0a037c

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 738
    .local v1, "previousAnimator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 739
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v4, :cond_0

    .line 741
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 747
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 748
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 751
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 753
    return-void

    .line 754
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v4, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->blankDisplay()V

    .line 757
    return-void

    .line 758
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    if-nez v4, :cond_4

    .line 761
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v4, :cond_4

    .line 762
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 763
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 767
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v4, :cond_5

    .line 768
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 771
    :cond_5
    cmpl-float v4, p2, v0

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_0

    :cond_6
    move v4, v2

    .line 772
    .local v4, "wantsAlphaUpdate":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v6

    if-eq v5, v6, :cond_7

    move v2, v3

    nop

    .line 774
    .local v2, "wantsTintUpdate":Z
    :cond_7
    if-nez v4, :cond_9

    if-eqz v2, :cond_8

    goto :goto_1

    .line 783
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    goto :goto_2

    .line 775
    :cond_9
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v3, :cond_a

    .line 776
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    goto :goto_2

    .line 779
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    .line 785
    :goto_2
    return-void
.end method

.method private updateScrimColor(Landroid/view/View;FI)V
    .locals 5
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "tint"    # I

    .line 605
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 606
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v0, :cond_2

    .line 607
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    .line 609
    .local v0, "scrimView":Lcom/android/systemui/statusbar/ScrimView;
    nop

    .line 610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_0

    const-string v1, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v1, "back_scrim_alpha"

    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 609
    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 613
    nop

    .line 614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_1

    const-string v1, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string v1, "back_scrim_tint"

    .line 615
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 613
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 617
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 618
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    .line 620
    .end local v0    # "scrimView":Lcom/android/systemui/statusbar/ScrimView;
    goto :goto_2

    .line 621
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 623
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 624
    return-void
.end method


# virtual methods
.method protected cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "previousAnimator"    # Landroid/animation/ValueAnimator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 789
    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 792
    :cond_0
    return-void
.end method

.method protected createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 887
    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    const-string v3, "Scrims"

    .line 888
    invoke-static {v2, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 887
    return-object v0
.end method

.method protected doOnTheNextFrame(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/ScrimView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 833
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 893
    const-string v0, " ScrimController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    const-string v0, "  state: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 895
    const-string v0, "  frontScrim:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " viewAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 896
    const-string v0, " alpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 897
    const-string v0, " tint=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const-string v0, "  backScrim:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " viewAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 900
    const-string v0, " alpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 901
    const-string v0, " tint=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v0, "   mTracking="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 904
    return-void
.end method

.method public forceHideScrims(ZZ)V
    .locals 0
    .param p1, "hide"    # Z
    .param p2, "animated"    # Z

    .line 842
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    .line 843
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 844
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 845
    return-void
.end method

.method public getBackgroundColor()I
    .locals 5

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    .line 854
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 855
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 854
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 837
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 4
    .param p1, "colorExtractor"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "which"    # I

    .line 868
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 871
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 874
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getFallbackColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 880
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 883
    :cond_2
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 334
    return-void
.end method

.method protected onHideWallpaperTimeout()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 344
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 347
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onStart()V

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 697
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 701
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 931
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 919
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 920
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 922
    const-string v1, "ScrimController"

    const-string v2, "Shorter blanking because screen turned on. All good."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 925
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 927
    :cond_1
    return-void
.end method

.method public onTrackingStarted()V
    .locals 2

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 330
    return-void
.end method

.method protected scheduleUpdate()V
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 488
    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 474
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    .line 479
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "currentUser"    # I

    .line 864
    return-void
.end method

.method public setDrawBehindAsSrc(Z)V
    .locals 1
    .param p1, "asSrc"    # Z

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 727
    return-void
.end method

.method public setExcludedBackgroundArea(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setExcludedArea(Landroid/graphics/Rect;)V

    .line 850
    return-void
.end method

.method public setExpansionAffectsAlpha(Z)V
    .locals 0
    .param p1, "expansionAffectsAlpha"    # Z

    .line 934
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 935
    return-void
.end method

.method public setForceDrawFullViewBehind(Z)V
    .locals 1
    .param p1, "forceDrawFullView"    # Z

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setForceDrawFullView(Z)V

    .line 956
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0
    .param p1, "keyguardOccluded"    # Z

    .line 938
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    .line 939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 940
    return-void
.end method

.method public setNotificationCount(I)V
    .locals 4
    .param p1, "notificationCount"    # I

    .line 440
    const/high16 v0, 0x40400000    # 3.0f

    .line 441
    .local v0, "maxNotificationDensity":F
    int-to-float v1, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 442
    .local v1, "notificationDensity":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationDensity:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationDensity:F

    .line 447
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v2, v3, :cond_1

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 451
    :cond_1
    return-void
.end method

.method setOnAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 731
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 732
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 369
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_5

    .line 370
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 374
    .local v0, "keyguardOrUnlocked":Z
    :goto_1
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 378
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 380
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v1, :cond_3

    .line 381
    return-void

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .end local v0    # "keyguardOrUnlocked":Z
    goto :goto_3

    .line 375
    .restart local v0    # "keyguardOrUnlocked":Z
    :cond_4
    :goto_2
    return-void

    .line 389
    .end local v0    # "keyguardOrUnlocked":Z
    :cond_5
    :goto_3
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    .line 860
    return-void
.end method

.method public setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 3
    .param p1, "wallpaperSupportsAmbientMode"    # Z

    .line 907
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    .line 908
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    .line 909
    .local v0, "states":[Lcom/android/systemui/statusbar/phone/ScrimState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 910
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWallpaperSupportsAmbientMode(Z)V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    .line 218
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/ScrimState;
    .param p2, "callback"    # Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    .line 223
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq v0, p2, :cond_0

    .line 224
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 226
    :cond_0
    return-void

    .line 227
    :cond_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "ScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_e

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 236
    .local v0, "oldState":Lcom/android/systemui/statusbar/phone/ScrimState;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 237
    const-wide/16 v1, 0x1000

    const-string v3, "scrim_state"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimState;->getIndex()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    .line 242
    :cond_3
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 244
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 246
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 247
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBlanksScreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 248
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 249
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimationDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 250
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontTint()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    .line 252
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 253
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationDensity:F

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ScrimView;->setFocusable(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ScrimView;->setFocusable(Z)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ScrimView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 273
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 284
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v2, v3, :cond_8

    .line 286
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-nez v1, :cond_9

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)V

    goto :goto_1

    .line 291
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_9

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v2}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 293
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 296
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_a

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-wide/16 v3, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ScrimView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 300
    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_2

    .line 301
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 302
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    if-nez v1, :cond_d

    .line 306
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    goto :goto_2

    .line 308
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 311
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 312
    return-void

    .line 232
    .end local v0    # "oldState":Lcom/android/systemui/statusbar/phone/ScrimState;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot change to UNINITIALIZED."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateScrims()V
    .locals 8

    .line 492
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 493
    const-string v0, "ScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScrims: , mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", anim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTracking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDarkenWhileDragging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLockColors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemColors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 504
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v4, :cond_1

    goto :goto_2

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 515
    .local v0, "animateScrimInFront":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    .line 516
    .local v4, "animateScrimBehind":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 517
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSystemColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .end local v0    # "animateScrimInFront":Z
    .end local v4    # "animateScrimBehind":Z
    goto :goto_3

    .line 509
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 518
    .local v0, "currentScrimColors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :goto_3
    nop

    .line 522
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, -0x1000000

    goto :goto_4

    :cond_5
    const/4 v4, -0x1

    .line 523
    .local v4, "textColor":I
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v5

    .line 524
    .local v5, "mainColor":I
    const/high16 v6, 0x40900000    # 4.5f

    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumBackgroundAlpha(IIF)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    .line 526
    .local v6, "minOpacity":F
    iget v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 527
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 532
    .end local v0    # "currentScrimColors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .end local v4    # "textColor":I
    .end local v5    # "mainColor":I
    .end local v6    # "minOpacity":F
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v3

    .line 534
    .local v0, "aodWallpaperTimeout":Z
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v4, v5, :cond_9

    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    .line 536
    .local v2, "occludedKeyguard":Z
    :goto_6
    if-nez v0, :cond_a

    if-eqz v2, :cond_b

    .line 537
    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 541
    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mForceHideScrims:Z

    if-eqz v4, :cond_c

    .line 543
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 544
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontAlpha(F)V

    .line 545
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindAlpha(F)V

    goto :goto_7

    .line 547
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontAlpha(F)V

    .line 548
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindAlpha(F)V

    .line 551
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    .line 552
    return-void
.end method
