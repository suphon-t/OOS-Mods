.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private final mBg:Landroid/widget/ImageView;

.field private mClicked:Z

.field private mClickedForAnim:Z

.field private mCollapsedView:Z

.field private final mColorActive:I

.field private final mColorDisabled:I

.field private final mColorInactive:I

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private mIsAnimating:Z

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 85
    .local v0, "padding":I
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    const v3, 0x7f08057b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 102
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 105
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 108
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 114
    .local v4, "ripple":Landroid/graphics/drawable/RippleDrawable;
    const v5, 0x7f0603f4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 118
    .end local v4    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setImportantForAccessibility(I)V

    .line 119
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    const v5, 0x1010435

    invoke-static {p1, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I

    .line 122
    const v5, 0x1010212

    .line 123
    invoke-static {p1, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    .line 122
    invoke-static {p1, v5}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I

    .line 124
    const v5, 0x1010038

    invoke-static {p1, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorInactive:I

    .line 126
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setPadding(IIII)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipChildren(Z)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClipToPadding(Z)V

    .line 129
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z

    .line 130
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setFocusable(Z)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClickedForAnim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileBaseView;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getCircleColor(I)I
    .locals 1
    .param p1, "state"    # I

    .line 340
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$handleStateChanged$3(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 229
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static synthetic lambda$handleStateChanged$4(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 255
    :cond_0
    return-void
.end method

.method static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0
    .param p0, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p1, "v"    # Landroid/view/View;

    .line 162
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0
    .param p0, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p1, "v"    # Landroid/view/View;

    .line 162
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 1
    .param p0, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p1, "view"    # Landroid/view/View;

    .line 163
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 1
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .line 146
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    .line 150
    :cond_0
    return-void
.end method

.method private updateRippleSize()V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    .local v0, "cx":I
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    .local v1, "cy":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSIconView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 157
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 158
    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 1

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public getDetailY()I
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object v0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 208
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 210
    .local v0, "circleColor":I
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 211
    .local v1, "csl":Landroid/content/res/ColorStateList;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 213
    .local v3, "curColor":I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v3, :cond_6

    .line 217
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v3, v6, v2

    aput v0, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x15e

    .line 227
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 229
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v7

    if-ne v7, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    .line 237
    .local v5, "isAndroidTheme":Z
    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/systemui/plugins/qs/QSTile$State;->isNeedLottie(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClickedForAnim:Z

    if-eqz v7, :cond_4

    .line 239
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v7, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0705ad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 241
    .local v7, "size":I
    new-instance v8, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 242
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .end local v7    # "size":I
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 248
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v5}, Lcom/android/systemui/plugins/qs/QSTile$State;->getLottieAnimFile(Z)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 249
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v8, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$GvLGhr7lGxPtiboJyt0UQWI_yjA;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$GvLGhr7lGxPtiboJyt0UQWI_yjA;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v8, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;

    invoke-direct {v8, p0, p1, v6, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile$State;Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 291
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 294
    .end local v5    # "isAndroidTheme":Z
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    :goto_2
    goto :goto_3

    .line 295
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v5, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 302
    :cond_6
    :goto_3
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_7

    .line 303
    const-string v5, "QSTileBaseView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleStateChanged: label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", iconRes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", cirColor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_7
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move v4, v2

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 309
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 310
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 313
    instance-of v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v4, :cond_9

    .line 314
    move-object v4, p1

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 315
    .local v4, "newState":Z
    iget-boolean v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v5, v4, :cond_9

    .line 316
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 317
    iput-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 320
    .end local v4    # "newState":Z
    :cond_9
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "secondaryClick"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;

    .line 162
    new-instance v0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 166
    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101045c

    aput v2, v0, v1

    .line 139
    .local v0, "attrs":[I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 140
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 377
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 380
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 382
    .local v0, "b":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 383
    if-eqz v0, :cond_2

    const v2, 0x7f110603

    goto :goto_1

    :cond_2
    const v2, 0x7f110602

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 388
    .end local v0    # "b":Z
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 392
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 395
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    .line 397
    .local v0, "b":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 398
    if-eqz v0, :cond_2

    const v3, 0x7f110603

    goto :goto_1

    :cond_2
    const v3, 0x7f110602

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 401
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 402
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 404
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 408
    .end local v0    # "b":Z
    .end local v2    # "label":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 176
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/plugins/qs/QSTileView;->onLayout(ZIIII)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    .line 180
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIsAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClickedForAnim:Z

    .line 371
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mClicked:Z

    .line 372
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTileView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .line 346
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->setClickable(Z)V

    .line 347
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    return-void
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "previousView"    # Landroid/view/View;

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    .line 196
    return-object p0
.end method
