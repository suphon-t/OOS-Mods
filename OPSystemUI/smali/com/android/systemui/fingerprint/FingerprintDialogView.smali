.class public Lcom/android/systemui/fingerprint/FingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "FingerprintDialogView.java"


# instance fields
.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDelayRemoveDimRunnable:Ljava/lang/Runnable;

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimOnWindow:Z

.field private mDimView:Landroid/widget/ImageView;

.field private final mDisplayWidth:F

.field private final mErrorColor:I

.field private final mErrorText:Landroid/widget/TextView;

.field private mFaceUnlocked:Z

.field private final mFingerprintColor:I

.field private mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;

.field private mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOwnerString:Ljava/lang/String;

.field private mPm:Landroid/os/PowerManager;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowDefaultDialog:Z

.field private mShowOnWindow:Z

.field private mShowingPressed:Z

.field private final mTextColor:I

.field private mTransparentIconView:Landroid/view/View;

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

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    .line 75
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    .line 82
    const-string v0, "OPFingerprintView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    .line 83
    const-string v0, "OPFingerprintVDDim"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    .line 84
    const-string v0, "OPFingerprintVDpressed"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 141
    new-instance v2, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 485
    new-instance v2, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDelayRemoveDimRunnable:Ljava/lang/Runnable;

    .line 732
    new-instance v2, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 162
    iput-boolean p3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    .line 163
    iput-object p4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 165
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    .line 166
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 167
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 169
    const v3, 0x7f0701c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    .line 174
    nop

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFingerprintColor:I

    .line 177
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 185
    .local v3, "factory":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    .line 186
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 187
    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0d0068

    goto :goto_0

    :cond_0
    const v4, 0x7f0d0130

    :goto_0
    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 188
    const v4, 0x7f0d012d

    invoke-virtual {v3, v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    .line 189
    const v4, 0x7f0d012e

    invoke-virtual {v3, v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimeLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintDialogView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02ca

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a03ba

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "space":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a020d

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 238
    .local v1, "leftSpace":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a0347

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, "rightSpace":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a009c

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 240
    .local v5, "negative":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a009b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 242
    .local v6, "positive":Landroid/widget/Button;
    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 244
    invoke-direct {p0, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 246
    new-instance v7, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;

    invoke-direct {v7, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v7, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;

    invoke-direct {v7, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 255
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 258
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v7, :cond_2

    .line 259
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintDialogView(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 262
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    return-object v0
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 616
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 617
    const v0, 0x7f0801f2

    .local v0, "iconRes":I
    :goto_0
    goto :goto_1

    .line 618
    .end local v0    # "iconRes":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 619
    const v0, 0x7f0801f2

    goto :goto_0

    .line 620
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 621
    const v0, 0x7f0801f1

    goto :goto_0

    .line 622
    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 624
    const v0, 0x7f0801f1

    goto :goto_0

    .line 627
    .restart local v0    # "iconRes":I
    :goto_1
    nop

    .line 629
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 627
    .end local v0    # "iconRes":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .line 654
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 656
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    const/16 v1, 0x900

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    const/16 v1, 0x902

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 662
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 666
    :cond_2
    :goto_0
    const v1, 0x1000518

    .line 672
    .local v1, "flags":I
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 673
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 682
    const-string v3, "com.android.systemui"

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 684
    .local v3, "isKeyguard":Z
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 685
    const/4 v4, -0x2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 686
    const/4 v4, -0x1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 687
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 688
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 689
    if-eqz v3, :cond_3

    move v2, v4

    nop

    :cond_3
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 690
    const v2, 0x50d0013

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 691
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSystemUiVisibility()I

    move-result v2

    .line 696
    .local v2, "systemUIVisibility":I
    or-int/lit16 v2, v2, 0x402

    .line 697
    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setSystemUiVisibility(I)V

    .line 699
    return-object v0
.end method

.method private getDimeLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void
.end method

.method public static synthetic lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return v1
.end method

.method public static synthetic lambda$setDisplayDimMode$3(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1004
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

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
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

    .line 1009
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayPressMode$4(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4
    .param p1, "mode"    # I

    .line 1015
    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set press mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
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

    .line 1020
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private resetState()V
    .locals 1

    .line 816
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 819
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 820
    return-void
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 365
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 601
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    .line 602
    return v0

    .line 603
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 604
    return v1

    .line 605
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 606
    return v1

    .line 607
    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 609
    return v0

    .line 611
    :cond_3
    return v0
.end method

.method private shouldEnableHBM()Z
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 834
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 835
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM since highlight icon is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return v2

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to going to sleep"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return v1

    .line 848
    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 853
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 855
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v1

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_5

    .line 860
    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM in aod and fp is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v2

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 865
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v1

    .line 869
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_7

    .line 870
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to already face unlocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return v1

    .line 874
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 876
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to lockout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v1

    .line 879
    :cond_8
    return v2

    .line 849
    :cond_9
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v1

    .line 830
    :cond_a
    :goto_1
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM dim view is gone or not show on window"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return v1
.end method

.method private showTemporaryMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 465
    return-void
.end method

.method private updateDimViewVisibility(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 951
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDimViewVisibility: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", onWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    if-nez v0, :cond_0

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    .line 955
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDelayRemoveDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 960
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    .line 963
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    if-eqz v0, :cond_1

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    .line 965
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    .line 967
    :cond_1
    :goto_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 578
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 580
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 581
    const-string v1, "FingerprintDialogView"

    const-string v2, "Animation not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 585
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 586
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    .line 587
    :cond_1
    const/4 v1, 0x0

    .line 589
    .local v1, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a014d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 590
    .local v2, "fingerprint_icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 594
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 597
    :cond_2
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 598
    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 439
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 635
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    .line 640
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7de

    const/high16 v5, 0x1000000

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 646
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 647
    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 649
    return-object v0
.end method

.method public isAnimatingAway()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    return v0
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 2

    .line 990
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 992
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 993
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 994
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 996
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 998
    :cond_0
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 3

    .line 979
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

    .line 980
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 982
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 983
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 984
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 987
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 12

    .line 276
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 278
    const-string v0, "FingerprintDialogView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0402

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a03d4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 282
    .local v1, "subtitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    .local v2, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a009c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 284
    .local v3, "negative":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a009b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 286
    .local v4, "positive":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 289
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 292
    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v7, :cond_3

    .line 293
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 296
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v8, "subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 297
    .local v7, "subtitleText":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_0

    .line 298
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "description"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 305
    .local v8, "descriptionText":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 306
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 308
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "negative_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "positive_text"

    .line 315
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 316
    .local v10, "positiveText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 317
    if-eqz v10, :cond_2

    .line 318
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    .end local v7    # "subtitleText":Ljava/lang/CharSequence;
    .end local v8    # "descriptionText":Ljava/lang/CharSequence;
    .end local v10    # "positiveText":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 324
    iput-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 326
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_4

    .line 327
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    .line 328
    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 329
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 330
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 331
    return-void

    .line 335
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

    .line 336
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    const/4 v8, 0x0

    if-nez v6, :cond_5

    .line 338
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 339
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 340
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 343
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 344
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 345
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 346
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 347
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 350
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 351
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 355
    const-string v0, "FingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 361
    return-void
.end method

.method public playAnimation(I)V
    .locals 2
    .param p1, "type"    # I

    .line 543
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    return-void

    .line 552
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    .line 553
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->playAnimation(I)V

    .line 559
    :cond_3
    return-void
.end method

.method protected resetMessage()V
    .locals 2

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f110279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 446
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    .line 447
    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1002
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$FhvIBATrvEaC8kuW_X9BLscQoc0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$FhvIBATrvEaC8kuW_X9BLscQoc0;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method public setDisplayPressMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1013
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$SWCE5OtepH81xGl7-JzlqihtKtE;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$SWCE5OtepH81xGl7-JzlqihtKtE;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1021
    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 480
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp client to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    .line 483
    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 3
    .param p1, "attach"    # Z

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 272
    :goto_0
    return-void
.end method

.method public setTransparentIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "iconView"    # Landroid/view/View;

    .line 971
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    .line 972
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 472
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public showFingerprintPressed(Z)V
    .locals 5
    .param p1, "showPressed"    # Z

    .line 493
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_8

    .line 494
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-ne v0, p1, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_1

    .line 499
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 505
    const-string v0, "FingerprintDialogView"

    const-string v1, "fp is disabled currently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 511
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDelayRemoveDimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 520
    if-eqz p1, :cond_4

    .line 521
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    goto :goto_0

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDelayRemoveDimRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    sget v4, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->getAnimationDuration(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    :cond_5
    :goto_0
    const-string v0, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFingerprintPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", owner:"

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

    .line 530
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_7

    .line 531
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 534
    :cond_6
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    goto :goto_1

    .line 536
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    .line 537
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    .line 540
    :cond_8
    :goto_1
    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 468
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public startDismiss(Z)V
    .locals 3
    .param p1, "authenticatedSuccess"    # Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 381
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 397
    .local v0, "endActionRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 399
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 400
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 401
    return-void

    .line 405
    :cond_0
    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation()V

    .line 565
    :cond_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 716
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    .line 717
    return-void

    .line 720
    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFpDaemonStatus: "

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

    .line 721
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_2

    .line 722
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 724
    return-void

    .line 725
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 727
    return-void

    .line 730
    :cond_2
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 8
    .param p1, "forceHide"    # Z

    .line 885
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 894
    .local v0, "isUnlockwithFingerPrintAllowed":Z
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 895
    .local v2, "isOccluded":Z
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v3

    .line 896
    .local v3, "isGoingToSleep":Z
    const-string v4, "FingerprintDialogView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIconVisibility: fp client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", forceHide = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", showOnWindow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", goingToSleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", screenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isUnlockwithFingerPrintAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", interactive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    .line 903
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isOccluded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isFaceUnlocked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isLockOut = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 906
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    .line 907
    invoke-virtual {v6}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 896
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v4, 0x0

    .line 910
    .local v4, "caseLog":I
    const/4 v5, 0x4

    if-eqz p1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 912
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 913
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 915
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v6, :cond_9

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 920
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 921
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 922
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 923
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 924
    const/4 v4, 0x3

    goto :goto_1

    .line 925
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v6, :cond_5

    .line 926
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 927
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 928
    const/4 v4, 0x4

    goto :goto_1

    .line 929
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 930
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 931
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 932
    const/4 v4, 0x5

    goto :goto_1

    .line 933
    :cond_6
    if-nez v0, :cond_7

    .line 934
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 935
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 936
    const/4 v4, 0x6

    goto :goto_1

    .line 937
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 938
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 939
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 940
    const/4 v4, 0x7

    goto :goto_1

    .line 941
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v6}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v6

    if-ne v6, v5, :cond_a

    .line 942
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v6, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 943
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 944
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    const/16 v4, 0x8

    goto :goto_1

    .line 917
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 918
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    .line 919
    const/4 v4, 0x2

    .line 947
    :cond_a
    :goto_1
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_b

    const-string v1, "FingerprintDialogView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caseLog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_b
    return-void

    .line 889
    .end local v0    # "isUnlockwithFingerPrintAllowed":Z
    .end local v2    # "isOccluded":Z
    .end local v3    # "isGoingToSleep":Z
    .end local v4    # "caseLog":I
    :cond_c
    :goto_2
    const-string v0, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v4, 0x1

    if-nez v3, :cond_d

    move v3, v4

    goto :goto_3

    :cond_d
    move v3, v1

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-nez v3, :cond_e

    move v1, v4

    nop

    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void
.end method
