.class public Lcom/android/systemui/fingerprint/FingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "FingerprintDialogView.java"


# instance fields
.field private final OP_DISPLAY_AOD_MODE:I

.field private final OP_DISPLAY_APPLY_HIDE_AOD:I

.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mAodIndicationTextView:Landroid/widget/TextView;

.field private mAodMode:I

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDeviceInteractive:Z

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimOnWindow:Z

.field private mDimView:Landroid/widget/ImageView;

.field private mDisplayOverLayOn:Z

.field private final mDisplayWidth:F

.field private final mErrorColor:I

.field private final mErrorText:Landroid/widget/TextView;

.field private mFaceUnlocked:Z

.field private final mFingerprintColor:I

.field private mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mIsScreenTurningOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOwnerString:Ljava/lang/String;

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mScreenOffAuthenticating:Z

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowDefaultDialog:Z

.field private mShowOnWindow:Z

.field private mShowingKeyguard:Z

.field private mShowingPressed:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mSurfaceFlinger:Landroid/os/IBinder;

.field private final mTextColor:I

.field private mTransparentIconView:Landroid/view/View;

.field private final mUpdateIconRunnable:Ljava/lang/Runnable;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "defaultDialog"    # Z
    .param p4, "dialogImpl"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 202
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_AOD_MODE:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    .line 89
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    .line 90
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_APPLY_HIDE_AOD:I

    .line 101
    const-string v0, "OPFingerprintView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    .line 102
    const-string v0, "OPFingerprintVDDim"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    .line 103
    const-string v0, "OPFingerprintVDpressed"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    .line 132
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayOverLayOn:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    .line 178
    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    .line 180
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    .line 182
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 548
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    .line 854
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1038
    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    .line 203
    iput-boolean p3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    .line 204
    iput-object p4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 206
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    .line 207
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 208
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 210
    const v4, 0x7f0701d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    .line 211
    nop

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    .line 213
    nop

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    .line 215
    nop

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFingerprintColor:I

    .line 218
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 220
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 226
    .local v4, "factory":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    .line 227
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 228
    iget-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0d006b

    goto :goto_0

    :cond_0
    const v5, 0x7f0d0138

    :goto_0
    invoke-virtual {v4, v5, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 229
    const v5, 0x7f0d0135

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    .line 230
    const v5, 0x7f0d0136

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 234
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSurfaceFlinger:Landroid/os/IBinder;

    .line 237
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 251
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 253
    :cond_1
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->addView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0117

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 260
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, "space":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a0220

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 283
    .local v1, "leftSpace":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a0365

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 284
    .local v5, "rightSpace":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a00a3

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 285
    .local v6, "negative":Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a00a2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 287
    .local v7, "positive":Landroid/widget/Button;
    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 288
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 289
    invoke-direct {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 291
    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 300
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 303
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintDialogView(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 307
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFPIndicationText()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayHideAod(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 732
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 733
    const v0, 0x7f080232

    .local v0, "iconRes":I
    :goto_0
    goto :goto_1

    .line 734
    .end local v0    # "iconRes":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 735
    const v0, 0x7f080232

    goto :goto_0

    .line 736
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 737
    const v0, 0x7f080231

    goto :goto_0

    .line 738
    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 740
    const v0, 0x7f080231

    goto :goto_0

    .line 746
    .restart local v0    # "iconRes":I
    :goto_1
    nop

    .line 748
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 744
    .end local v0    # "iconRes":I
    :cond_3
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;

    .line 773
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 775
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    const/16 v1, 0x900

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 779
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    const/16 v1, 0x902

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 781
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 785
    :cond_2
    :goto_0
    const v1, 0x1000518

    .line 791
    .local v1, "flags":I
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 792
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 801
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v3

    .line 803
    .local v3, "isKeyguard":Z
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 804
    const/4 v4, -0x2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 805
    const/4 v4, -0x1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 806
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 807
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 809
    if-nez v3, :cond_4

    const-string v5, "com.oneplus.applocker"

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 810
    const v2, 0x50e0013

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 811
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 814
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    const-string v2, "FingerprintDialogView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomLayoutParams owner:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSystemUiVisibility()I

    move-result v2

    .line 818
    .local v2, "systemUIVisibility":I
    or-int/lit16 v2, v2, 0x402

    .line 819
    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setSystemUiVisibility(I)V

    .line 821
    return-object v0
.end method

.method private getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1282
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    return-void
.end method

.method public static synthetic lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return v1
.end method

.method public static synthetic lambda$setDisplayAodMode$3(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayDimMode$4(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1336
    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    .line 1342
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1343
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    .line 1344
    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1345
    const-string v1, "FingerPrintMode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 1347
    :cond_0
    const-string v1, "FingerPrintMode"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :cond_1
    :goto_0
    goto :goto_1

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$setDisplayHideAod$6(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1386
    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hide aod mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xb

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayPressMode$5(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    goto :goto_0

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 415
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    return-void
.end method

.method private setDisplayAodMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1312
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    return-void

    .line 1317
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    if-ne v0, p1, :cond_1

    .line 1319
    return-void

    .line 1321
    :cond_1
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    .line 1324
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method private setDisplayHideAod(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1384
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1392
    return-void
.end method

.method private setDisplayPressMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 1358
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1359
    .local v1, "press":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-ne v2, v1, :cond_1

    .line 1360
    const-string v0, "FingerprintDialogView"

    const-string v2, "setDisplayPressMode: the same state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1363
    :cond_1
    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set press mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    .line 1369
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    if-ne p1, v0, :cond_2

    .line 1370
    return-void

    .line 1374
    :cond_2
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1381
    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 717
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    .line 718
    return v0

    .line 719
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 720
    return v1

    .line 721
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 722
    return v1

    .line 723
    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 725
    return v0

    .line 727
    :cond_3
    return v0
.end method

.method private shouldEnableHBM()Z
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1068
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1069
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM since highlight icon is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return v2

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to going to sleep"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return v1

    .line 1082
    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1087
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1088
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1089
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return v1

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_5

    .line 1094
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM in aod and fp is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return v2

    .line 1098
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1099
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return v1

    .line 1103
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_7

    .line 1104
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to already face unlocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v1

    .line 1109
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 1115
    :cond_8
    return v2

    .line 1111
    :cond_9
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to lockout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return v1

    .line 1083
    :cond_a
    :goto_1
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v1

    .line 1064
    :cond_b
    :goto_2
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM dim view is gone or not show on window"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return v1
.end method

.method private showTemporaryMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 518
    return-void
.end method

.method private updateFPIndicationText()V
    .locals 5

    .line 1517
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFPIndicationText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const v1, 0x104023e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1521
    return-void

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1525
    .local v0, "security":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1526
    const/4 v1, 0x0

    .line 1527
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_1

    .line 1528
    const v1, 0x7f110358

    goto :goto_0

    .line 1529
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_2

    .line 1530
    const v1, 0x7f110357

    goto :goto_0

    .line 1531
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_3

    .line 1532
    const v1, 0x7f110359

    .line 1534
    :cond_3
    :goto_0
    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFPIndicationText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    if-eqz v1, :cond_4

    .line 1537
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1539
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    :goto_1
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 694
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 696
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 697
    const-string v1, "FingerprintDialogView"

    const-string v2, "Animation not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 701
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 702
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    .line 703
    :cond_1
    const/4 v1, 0x0

    .line 705
    .local v1, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a015c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 706
    .local v2, "fingerprint_icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 710
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 713
    :cond_2
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 714
    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 2

    .line 485
    const-string v0, "FingerprintDialogView"

    const-string v1, "forceRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 492
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 754
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7de

    const/high16 v5, 0x1000000

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 765
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 766
    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 768
    return-object v0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1546
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1562
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security quality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1555
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1549
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1558
    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    .line 1560
    :cond_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1
.end method

.method public handleFpResultEvent()V
    .locals 3

    .line 631
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 632
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFpResultEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    .line 634
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 638
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 644
    :cond_1
    return-void
.end method

.method public hideFingerprintPressed()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFingerprintPressed = false, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 621
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 628
    :goto_0
    return-void
.end method

.method public isAnimatingAway()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    return v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method public notifyBrightnessChange()V
    .locals 1

    .line 1509
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->onBrightnessChange()V

    .line 1512
    :cond_0
    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 2

    .line 1297
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 1299
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    .line 1303
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1304
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1308
    :cond_1
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 3

    .line 1286
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyKeyguardDone, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 1289
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 1291
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 1294
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 12

    .line 326
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 328
    const-string v0, "FingerprintDialogView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a03f7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "subtitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0102

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 333
    .local v2, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a00a3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 334
    .local v3, "negative":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a00a2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 336
    .local v4, "positive":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 339
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 342
    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v7, :cond_3

    .line 343
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 346
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 347
    .local v7, "subtitleText":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_0

    .line 348
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "description"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 355
    .local v8, "descriptionText":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 356
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "negative_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "positive_text"

    .line 365
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 366
    .local v10, "positiveText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    if-eqz v10, :cond_2

    .line 368
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 370
    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    .end local v7    # "subtitleText":Ljava/lang/CharSequence;
    .end local v8    # "descriptionText":Ljava/lang/CharSequence;
    .end local v10    # "positiveText":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 374
    iput-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 376
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_4

    .line 377
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    .line 378
    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 379
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 380
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 381
    return-void

    .line 385
    :cond_4
    const-string v6, "FingerprintDialogView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWasForceRemoved = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    const/4 v8, 0x0

    if-nez v6, :cond_5

    .line 388
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 389
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 390
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 393
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 394
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 395
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 396
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 397
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 400
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 401
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 405
    const-string v0, "FingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 410
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 411
    return-void
.end method

.method public onFingerprintEventCallback(II)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->onFingerprintEventCallback(II)V

    .line 1400
    :cond_0
    return-void
.end method

.method public playAnimation(I)V
    .locals 2
    .param p1, "type"    # I

    .line 649
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 650
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    return-void

    .line 657
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    .line 658
    return-void

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->playAnimation(I)V

    .line 671
    :cond_4
    return-void

    .line 663
    :cond_5
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v1, "don\'t play animation due to going to sleep or screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method public postTimeOutRunnable()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    return-void
.end method

.method public removeTimeOutMessage()V
    .locals 2

    .line 565
    const-string v0, "FingerprintDialogView"

    const-string v1, "remove time out message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method protected resetMessage()V
    .locals 2

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f11027e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    return-void
.end method

.method protected resetState()V
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->resetState()V

    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 1053
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 1055
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 499
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    .line 500
    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1334
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1353
    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 533
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp client to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 538
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 3
    .param p1, "attach"    # Z

    .line 310
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPressDimWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz p1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 322
    :goto_0
    return-void
.end method

.method public setTransparentIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "iconView"    # Landroid/view/View;

    .line 1278
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    .line 1279
    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 3

    .line 1482
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldHideDismissButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1484
    return v1

    .line 1487
    :cond_0
    const-string v0, "com.oneplus.applocker"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    return v1

    .line 1491
    :cond_1
    const-string v0, "com.android.settings"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1492
    return v1

    .line 1495
    :cond_2
    const-string v0, "com.oneplus.filemanager"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1496
    return v1

    .line 1499
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1500
    return v1

    .line 1503
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 525
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "o"    # Ljava/lang/Object;

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-object v1, p2

    check-cast v1, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->forceShowDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    .line 1471
    return-void
.end method

.method public showFingerprintPressed()V
    .locals 4

    .line 571
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 572
    return-void

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    .line 576
    const-string v0, "FingerprintDialogView"

    const-string v1, "press state the same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 580
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_2

    .line 581
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 586
    const-string v0, "FingerprintDialogView"

    const-string v2, "fp is disabled currently"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    .line 593
    return-void

    .line 596
    :cond_3
    const-string v0, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFingerprintPressed = true, owner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", done:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    .line 606
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 611
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 612
    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 521
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public startDismiss(Z)V
    .locals 3
    .param p1, "authenticatedSuccess"    # Z

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 431
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 449
    .local v0, "endActionRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 451
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 452
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 453
    return-void

    .line 457
    :cond_0
    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 678
    :cond_0
    return-void
.end method

.method public updateDimViewVisibility(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 1263
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDimViewVisibility: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    if-eqz p1, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    .line 1272
    :cond_0
    if-nez p1, :cond_1

    .line 1273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    .line 1275
    :cond_1
    :goto_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 838
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 839
    return-void

    .line 842
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFpDaemonStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_2

    .line 844
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 846
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 849
    return-void

    .line 852
    :cond_2
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 17
    .param p1, "forceHide"    # Z

    move-object/from16 v0, p0

    .line 1121
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    .line 1122
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1124
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 1129
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 1130
    .local v2, "isUnlockwithFingerPrintAllowed":Z
    iget-object v4, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v4

    .line 1131
    .local v4, "isOccluded":Z
    iget-object v5, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v5

    .line 1132
    .local v5, "isBouncer":Z
    iget-object v6, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isImeShow()Z

    move-result v6

    .line 1133
    .local v6, "isImeShow":Z
    iget-object v7, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    .line 1134
    .local v7, "isSimPin":Z
    iget-object v8, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v8

    .line 1136
    .local v8, "isDreaming":Z
    iget-object v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v9

    .line 1137
    .local v9, "isQSExpanded":Z
    iget-object v10, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v10

    .line 1138
    .local v10, "isPreventModeActivte":Z
    iget-object v11, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v11

    .line 1139
    .local v11, "faceRecognizing":Z
    iget-object v12, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v12

    .line 1140
    .local v12, "isLaunchingCamera":Z
    iget-object v13, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v13

    .line 1142
    .local v13, "isShowing":Z
    const-string v14, "FingerprintDialogView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIconVisibility: fp client = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", forceHide = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBouncer = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isImeShow = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showOnWindow = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", goingToSleep = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUnlockAllowed = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard visible = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDreaming = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOccluded = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceUnlocked = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSimPinSecure = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isQSExpanded = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLaunchingCamera = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreventActivte = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLockOut = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1161
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFacelockRecognizing = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOffAuthenticating = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", visibility = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 1164
    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1142
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v3, "0"

    .line 1167
    .local v3, "caseLog":Ljava/lang/String;
    const/4 v14, 0x4

    if-eqz v1, :cond_2

    .line 1168
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1169
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1170
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1171
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    const-string v3, "1"

    goto/16 :goto_3

    .line 1174
    :cond_2
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v15, :cond_3

    .line 1176
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1177
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1178
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1179
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    const-string v3, "2"

    goto/16 :goto_3

    .line 1183
    :cond_3
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-nez v15, :cond_4

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-eqz v15, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_14

    :cond_5
    if-nez v7, :cond_14

    if-nez v12, :cond_14

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_6

    if-nez v13, :cond_6

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1188
    invoke-direct {v0, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v15, :cond_14

    :cond_6
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v15, :cond_8

    if-nez v10, :cond_8

    if-eqz v9, :cond_7

    if-eqz v5, :cond_14

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    goto/16 :goto_2

    .line 1198
    :cond_8
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v15, :cond_9

    .line 1199
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1200
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1201
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1202
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    const-string v3, "4"

    goto/16 :goto_3

    .line 1204
    :cond_9
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1206
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1207
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1208
    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1209
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_a

    const/4 v15, 0x4

    goto :goto_0

    :cond_a
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    const-string v3, "5"

    goto/16 :goto_3

    .line 1212
    :cond_b
    if-nez v2, :cond_e

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v14, :cond_e

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 1214
    invoke-direct {v0, v14}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "forceShow-keyguard"

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1215
    :cond_c
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1216
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1217
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1218
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_d

    const/4 v15, 0x4

    goto :goto_1

    :cond_d
    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    const-string v3, "6"

    goto/16 :goto_3

    .line 1221
    :cond_e
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1222
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1223
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1227
    const-string v3, "7"

    goto/16 :goto_3

    .line 1228
    :cond_f
    const/4 v15, 0x4

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v14

    if-ne v14, v15, :cond_15

    .line 1230
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1231
    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v14, :cond_11

    if-eqz v11, :cond_11

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v14, :cond_10

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    if-eqz v14, :cond_11

    .line 1233
    :cond_10
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1234
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1235
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1236
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    const-string v3, "8-0"

    goto :goto_3

    .line 1240
    :cond_11
    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v14, :cond_12

    if-nez v8, :cond_12

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v14, :cond_15

    if-eqz v5, :cond_15

    .line 1241
    :cond_12
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1242
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1243
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1244
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1245
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1246
    const-string v3, "8-1"

    goto :goto_3

    .line 1251
    :cond_13
    const/4 v15, 0x0

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1252
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1253
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1254
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1256
    const-string v3, "8-2"

    goto :goto_3

    .line 1191
    :cond_14
    :goto_2
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1192
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1193
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 1194
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1196
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    .line 1197
    const-string v3, "3"

    .line 1259
    :cond_15
    :goto_3
    sget-boolean v14, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_16

    const-string v14, "FingerprintDialogView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caseLog: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_16
    return-void

    .line 1125
    .end local v2    # "isUnlockwithFingerPrintAllowed":Z
    .end local v3    # "caseLog":Ljava/lang/String;
    .end local v4    # "isOccluded":Z
    .end local v5    # "isBouncer":Z
    .end local v6    # "isImeShow":Z
    .end local v7    # "isSimPin":Z
    .end local v8    # "isDreaming":Z
    .end local v9    # "isQSExpanded":Z
    .end local v10    # "isPreventModeActivte":Z
    .end local v11    # "faceRecognizing":Z
    .end local v12    # "isLaunchingCamera":Z
    .end local v13    # "isShowing":Z
    :cond_17
    :goto_4
    const/4 v15, 0x0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v4, 0x1

    if-nez v3, :cond_18

    move v3, v4

    goto :goto_5

    :cond_18
    move v3, v15

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-nez v3, :cond_19

    move v15, v4

    nop

    :cond_19
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void
.end method
