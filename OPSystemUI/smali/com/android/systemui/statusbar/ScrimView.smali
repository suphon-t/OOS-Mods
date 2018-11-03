.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mCornerRadius:I

.field private mDensity:I

.field private mDrawAsSrc:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExcludedRect:Landroid/graphics/Rect;

.field private mForceDrawFullView:Z

.field private mHasExcludedArea:Z

.field private mTintColor:I

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mForceDrawFullView:Z

    .line 66
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$ScrimView$sc4BNvVbdVkUsFhB3vCR-4vbL8o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$ScrimView$sc4BNvVbdVkUsFhB3vCR-4vbL8o;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 97
    new-instance v1, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {v1, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 101
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->initView()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 104
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDensity:I

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private initView()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mContext:Landroid/content/Context;

    .line 109
    const v2, 0x1010571

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    .line 110
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "ScrimView"

    const-string v1, "Trying to animate null drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    return-void
.end method

.method private updateColorWithTint(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 273
    .local v0, "drawable":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 274
    .local v1, "tintAmount":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v2, v3, v1}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 276
    .local v2, "mainTinted":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v3, v4, v1}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 278
    .local v3, "secondaryTinted":I
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 279
    .end local v0    # "drawable":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    .end local v1    # "tintAmount":F
    .end local v2    # "mainTinted":I
    .end local v3    # "secondaryTinted":I
    goto :goto_2

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 289
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 292
    :cond_3
    return-void
.end method

.method private updateScreenSize()V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 360
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez v0, :cond_0

    .line 361
    const-string v1, "ScrimView"

    const-string v2, "Can\'t resize gradient drawable to fit the screen"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 365
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_1

    .line 366
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 367
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 368
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 371
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_1
    return-void
.end method


# virtual methods
.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTint()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    return v0
.end method

.method public getViewAlpha()F
    .locals 1

    .line 326
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 216
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 128
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 129
    .local v0, "config":Lcom/android/systemui/statusbar/policy/ConfigurationController;
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 355
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 116
    .local v0, "densityDpi":I
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDensity:I

    if-eq v1, v0, :cond_0

    .line 117
    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDensity:I

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->initView()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 136
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 137
    .local v0, "config":Lcom/android/systemui/statusbar/policy/ConfigurationController;
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_7

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mForceDrawFullView:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_3

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mCornerRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 146
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_7
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 226
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 231
    :cond_0
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .line 349
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 350
    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animated"    # Z

    .line 238
    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 245
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 246
    return-void

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawAsSrc(Z)V
    .locals 3
    .param p1, "asSrc"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 220
    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 221
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 222
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 208
    return-void
.end method

.method public setExcludedArea(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 330
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 331
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 333
    return-void

    .line 336
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 337
    .local v1, "left":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 338
    .local v2, "top":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 339
    .local v3, "right":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 340
    .local v4, "bottom":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mForceDrawFullView:Z

    if-eqz v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    if-ge v1, v3, :cond_1

    if-ge v2, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 346
    return-void
.end method

.method public setForceDrawFullView(Z)V
    .locals 0
    .param p1, "forceDrawFullView"    # Z

    .line 375
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mForceDrawFullView:Z

    .line 376
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTint(IZ)V

    .line 259
    return-void
.end method

.method public setTint(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .line 262
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    .line 266
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 267
    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 311
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 312
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 323
    :cond_1
    return-void
.end method
