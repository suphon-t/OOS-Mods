.class public Lcom/android/systemui/statusbar/NotificationBackgroundView;
.super Landroid/view/View;
.source "NotificationBackgroundView.java"


# instance fields
.field private mActualHeight:I

.field private mActualWidth:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTop:I

.field private mBottomAmountClips:Z

.field private mBottomIsRounded:Z

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mCornerRadii:[F

.field private mDistanceToTopRoundness:F

.field private final mDontModifyCorners:Z

.field private mDrawableAlpha:I

.field private mExpandAnimationRunning:Z

.field private mIsPressedAllowed:Z

.field private mTintColor:I

.field private mTopAmountRounded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 53
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDontModifyCorners:Z

    .line 63
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 79
    if-eqz p2, :cond_3

    .line 80
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    .line 81
    .local v0, "top":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    .line 82
    .local v1, "bottom":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomIsRounded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v2, :cond_0

    .line 83
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 86
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v3

    .line 87
    .local v3, "right":I
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 89
    int-to-float v4, v2

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 91
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTopAmountRounded:Z

    if-eqz v4, :cond_2

    .line 92
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 93
    .local v4, "clipTop":I
    add-int/2addr v0, v4

    .line 94
    if-ltz v4, :cond_2

    .line 95
    add-int/2addr v1, v4

    .line 98
    .end local v4    # "clipTop":I
    :cond_2
    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_3
    return-void
.end method

.method private updateBackgroundRadii()V
    .locals 2

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDontModifyCorners:Z

    if-eqz v0, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 249
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 251
    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 118
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 111
    return-void
.end method

.method public getActualHeight()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 67
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_2

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    :cond_2
    return-void
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 163
    return-void
.end method

.method public setBackgroundTop(I)V
    .locals 0
    .param p1, "backgroundTop"    # I

    .line 254
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 256
    return-void
.end method

.method public setBottomAmountClips(Z)V
    .locals 1
    .param p1, "clips"    # Z

    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eq p1, v0, :cond_0

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 240
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 177
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 170
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 172
    return-void
.end method

.method public setCustomBackground(I)V
    .locals 1
    .param p1, "drawableResId"    # I

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->updateBackgroundRadii()V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 140
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1
    .param p1, "distanceToTopRoundness"    # F

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTopAmountRounded:Z

    .line 182
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 185
    :cond_1
    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 1
    .param p1, "drawableAlpha"    # I

    .line 212
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    return-void
.end method

.method public setExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    .line 261
    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 262
    const-wide/16 v1, 0x43

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result v1

    .line 261
    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 265
    .local v0, "alphaProgress":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 267
    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 3
    .param p1, "running"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 274
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    nop

    .line 275
    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 274
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 278
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAntiAlias(Z)V

    .line 280
    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v0, :cond_2

    .line 281
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 284
    return-void
.end method

.method public setPressedAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mIsPressedAllowed:Z

    .line 288
    return-void
.end method

.method public setRippleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 207
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 209
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    return-void
.end method

.method public setRoundness(FF)V
    .locals 4
    .param p1, "topRoundness"    # F
    .param p2, "bottomRoundNess"    # F

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aget v0, v0, v2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomIsRounded:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p1, v0, v1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p1, v0, v3

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p2, v0, v2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x6

    aput p2, v0, v1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->updateBackgroundRadii()V

    .line 233
    return-void
.end method

.method public setState([I)V
    .locals 1
    .param p1, "drawableState"    # [I

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mIsPressedAllowed:Z

    if-nez v0, :cond_0

    .line 197
    const v0, 0x10100a7

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 153
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTintColor:I

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    .line 155
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
