.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# instance fields
.field private final POWER_SAVE_HIGHLIGHT_ENABLED:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentShow:Z

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mBatteryStyle:I

.field private mDarkIntensity:F

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

.field private mFastCharge:Z

.field private mFontScale:F

.field private mForceShowPercent:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mNonAdaptedBackgroundColor:I

.field private mNonAdaptedForegroundColor:I

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private final mSlotBattery:Ljava/lang/String;

.field private mTextColor:I

.field private mUseWallpaperTextColors:Z

.field private mUser:I

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->POWER_SAVE_HIGHLIGHT_ENABLED:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 101
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 310
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 322
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    .line 125
    const v1, 0x800013

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 127
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 129
    .local v1, "atts":Landroid/content/res/TypedArray;
    nop

    .line 130
    const v2, 0x7f0602bb

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 129
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 132
    .local v2, "frameColor":I
    new-instance v3, Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-direct {v3, p1, v2}, Lcom/android/systemui/OPBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    .line 134
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    new-instance v3, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 138
    new-instance v3, Lcom/android/systemui/util/OPUtils$DisableStateTracker;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/util/OPUtils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 141
    const v3, 0x104063d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 143
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 144
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07063f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07063e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 148
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 148
    invoke-virtual {v3, v0, v0, v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 150
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v4, Lcom/android/systemui/BatteryDashChargeView;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    .line 153
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 156
    .local v4, "mlp_batterydash":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 156
    invoke-virtual {v4, v0, v0, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 158
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setColorsFromContext(Landroid/content/Context;)V

    .line 166
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 168
    new-instance v5, Lcom/android/systemui/BatteryMeterView$1;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipChildren(Z)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipToPadding(Z)V

    .line 181
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .line 533
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 355
    const v1, 0x7f0d0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    return-object v0
.end method

.method private scaleBatteryMeterViews()V
    .locals 11

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 451
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 453
    .local v1, "typedValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    const v3, 0x7f07064e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 454
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 456
    .local v3, "iconScaleFactor":F
    const v4, 0x7f07063e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 458
    .local v4, "batteryHeight":I
    iget v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne v5, v2, :cond_0

    .line 459
    move v2, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f07063f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 461
    .local v2, "batteryWidth":I
    :goto_0
    const v5, 0x7f070089

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 463
    .local v5, "marginBottom":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    .local v6, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 467
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    mul-float/2addr v8, v9

    .line 471
    .local v8, "textSize":F
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 472
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 475
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v9}, Lcom/android/systemui/BatteryDashChargeView;->updateDisplayAndTextSize()V

    .line 476
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    .local v9, "batteryDashChargeViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v7, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 479
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v7, v9}, Lcom/android/systemui/BatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 2

    .line 425
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 426
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    :goto_1
    return-void
.end method

.method private declared-synchronized updatePercentText()V
    .locals 4

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 363
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_0
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/BatteryMeterView;
    throw v0
.end method

.method private updateShowPercent()V
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 373
    .local v0, "showing":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v2, :cond_4

    .line 378
    :goto_1
    if-nez v0, :cond_5

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 380
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 381
    return-void

    .line 384
    :cond_2
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 387
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    goto :goto_2

    .line 399
    :cond_4
    if-eqz v0, :cond_5

    .line 400
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 404
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 253
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 255
    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow / ParentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 261
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 260
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 263
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 265
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 273
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 291
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 293
    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatteryLevelChanged / level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / pluggedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / ParentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->setBatteryLevel(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setCharging(Z)V

    .line 299
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 301
    nop

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_1

    const v1, 0x7f110050

    goto :goto_0

    .line 303
    :cond_1
    const v1, 0x7f11004f

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 307
    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eq v0, p1, :cond_0

    .line 326
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 329
    :cond_0
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    .line 315
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 320
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 4
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 484
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 486
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    .local v0, "intensity":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 489
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 493
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const p3, -0x333334

    .line 495
    const v1, -0x333334

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 500
    :cond_1
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 502
    .local v1, "color":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 504
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 506
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez v2, :cond_2

    .line 507
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    .line 509
    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 438
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 439
    .local v1, "fontScale":F
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 440
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 444
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 277
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 279
    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ onDetachedFromWindow / ParentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 285
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 2
    .param p1, "fastChargeType"    # I

    .line 334
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "fastCharge":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eq v1, v0, :cond_1

    .line 337
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 341
    :cond_1
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .line 351
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 236
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 238
    .local v0, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 239
    .local v1, "hidden":Z
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    xor-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 240
    if-eqz v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 243
    .end local v0    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "hidden":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 249
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    if-nez p1, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f04010a

    .line 220
    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 221
    .local v0, "dualToneDarkTheme":Landroid/content/Context;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f040245

    .line 222
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 223
    .local v1, "dualToneLightTheme":Landroid/content/Context;
    const v2, 0x7f040052

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 224
    const v3, 0x7f040171

    invoke-static {v0, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 225
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 226
    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 227
    return-void
.end method

.method public setFillColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 525
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    if-ne v0, p1, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 530
    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 185
    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceShowPercent / mForceShowPercent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 189
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 417
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 418
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public updateColors(II)V
    .locals 1
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I

    .line 512
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 522
    return-void
.end method

.method public updateDashChargeView()V
    .locals 3

    .line 408
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    .line 414
    :goto_0
    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 3
    .param p1, "shouldUseWallpaperTextColor"    # Z

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-ne p1, v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v1, 0x7f040468

    .line 207
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f040469

    .line 208
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    goto :goto_0

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    .line 212
    :goto_0
    return-void
.end method
