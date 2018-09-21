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

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->POWER_SAVE_HIGHLIGHT_ENABLED:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 96
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 289
    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 301
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    .line 120
    const v1, 0x800013

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 122
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 124
    .local v1, "atts":Landroid/content/res/TypedArray;
    nop

    .line 125
    const v2, 0x7f0602ba

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 124
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 127
    .local v2, "frameColor":I
    new-instance v3, Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-direct {v3, p1, v2}, Lcom/android/systemui/OPBatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    .line 129
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance v3, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 133
    new-instance v3, Lcom/android/systemui/util/OPUtils$DisableStateTracker;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/util/OPUtils$DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 136
    const v3, 0x104063c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 138
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 139
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0705fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 143
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 143
    invoke-virtual {v3, v0, v0, v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v4, Lcom/android/systemui/BatteryDashChargeView;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    .line 148
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 151
    .local v4, "mlp_batterydash":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 151
    invoke-virtual {v4, v0, v0, v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 153
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setColorsFromContext(Landroid/content/Context;)V

    .line 161
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 163
    new-instance v5, Lcom/android/systemui/BatteryMeterView$1;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipChildren(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setClipToPadding(Z)V

    .line 176
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/BatteryMeterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .line 507
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

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 331
    const v1, 0x7f0d0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 330
    return-object v0
.end method

.method private scaleBatteryMeterViews()V
    .locals 11

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 425
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 427
    .local v1, "typedValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    const v3, 0x7f07060d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 428
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 430
    .local v3, "iconScaleFactor":F
    const v4, 0x7f0705fd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 432
    .local v4, "batteryHeight":I
    iget v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne v5, v2, :cond_0

    .line 433
    move v2, v4

    goto :goto_0

    :cond_0
    const v2, 0x7f0705fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 435
    .local v2, "batteryWidth":I
    :goto_0
    const v5, 0x7f070089

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 437
    .local v5, "marginBottom":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    .local v6, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    mul-float/2addr v8, v9

    .line 445
    .local v8, "textSize":F
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 446
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 449
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v9}, Lcom/android/systemui/BatteryDashChargeView;->updateDisplayAndTextSize()V

    .line 450
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 452
    .local v9, "batteryDashChargeViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v7, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v7, v9}, Lcom/android/systemui/BatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 2

    .line 399
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    :goto_1
    return-void
.end method

.method private updatePercentText()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 337
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_0
    return-void
.end method

.method private updateShowPercent()V
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 347
    .local v0, "showing":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/HighlightHintView;->SHOW_OVAL_LAYOUT:Z

    if-nez v2, :cond_2

    const-class v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    if-eqz v2, :cond_5

    .line 352
    :cond_2
    if-nez v0, :cond_6

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 354
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 355
    return-void

    .line 358
    :cond_3
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 360
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 361
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    goto :goto_1

    .line 373
    :cond_5
    if-eqz v0, :cond_6

    .line 374
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 378
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 245
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 246
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    .line 250
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mUser:I

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 252
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 254
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 262
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .line 276
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->setBatteryLevel(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setCharging(Z)V

    .line 278
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 280
    nop

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_0

    const v1, 0x7f110050

    goto :goto_0

    .line 282
    :cond_0
    const v1, 0x7f11004f

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 286
    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 304
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    if-eq v0, p1, :cond_0

    .line 305
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentShow:Z

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 308
    :cond_0
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .line 293
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/OPBatteryMeterDrawable;->onBatteryStyleChanged(I)V

    .line 294
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 299
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 4
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 458
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    .line 460
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 461
    .local v0, "intensity":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 463
    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    .line 467
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    const p3, -0x333334

    .line 469
    const v1, -0x333334

    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    .line 474
    :cond_1
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 476
    .local v1, "color":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 478
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 480
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-nez v2, :cond_2

    .line 481
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    .line 483
    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 412
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 413
    .local v1, "fontScale":F
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 414
    iput v1, p0, Lcom/android/systemui/BatteryMeterView;->mFontScale:F

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 418
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 271
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 1
    .param p1, "fastCharge"    # Z

    .line 312
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eq v0, p1, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateDashChargeView()V

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 317
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .line 327
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 228
    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 230
    .local v0, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, "hidden":Z
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    xor-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 232
    if-eqz v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 235
    .end local v0    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "hidden":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryMeterVisibility()V

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 241
    return-void
.end method

.method public setColorsFromContext(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    if-nez p1, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f04010a

    .line 212
    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 213
    .local v0, "dualToneDarkTheme":Landroid/content/Context;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f040242

    .line 214
    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 215
    .local v1, "dualToneLightTheme":Landroid/content/Context;
    const v2, 0x7f040052

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 216
    const v3, 0x7f040170

    invoke-static {v0, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 217
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 218
    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 219
    return-void
.end method

.method public setFillColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 499
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    if-ne v0, p1, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 504
    return-void
.end method

.method public setForceShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 181
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 391
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 392
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public updateColors(II)V
    .locals 1
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/systemui/OPBatteryMeterDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->setColors(II)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryDashChargeView;->setIconTint(I)V

    .line 496
    return-void
.end method

.method public updateDashChargeView()V
    .locals 3

    .line 382
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDashChargeView:Lcom/android/systemui/BatteryDashChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setVisibility(I)V

    .line 388
    :goto_0
    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 3
    .param p1, "shouldUseWallpaperTextColor"    # Z

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-ne p1, v0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mUseWallpaperTextColors:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v1, 0x7f040456

    .line 199
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    const v2, 0x7f040457

    .line 200
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateColors(II)V

    .line 204
    :goto_0
    return-void
.end method
