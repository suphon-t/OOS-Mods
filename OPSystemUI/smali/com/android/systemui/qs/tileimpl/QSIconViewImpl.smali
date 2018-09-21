.class public Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;
.source "QSIconViewImpl.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field private mState:I

.field protected final mTilePaddingBelowIconPx:I

.field private mTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSIconViewImpl."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070572

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    .line 60
    const v1, 0x7f070579

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method private animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "fromColor"    # I
    .param p2, "toColor"    # I
    .param p3, "iv"    # Landroid/widget/ImageView;
    .param p4, "endRunnable"    # Ljava/lang/Runnable;

    move-object v0, p0

    move-object/from16 v7, p3

    .line 172
    instance-of v1, v7, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_0

    .line 173
    move-object v1, v7

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 174
    invoke-static/range {p2 .. p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v8, v1

    .line 178
    .local v8, "fromAlpha":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v9, v1

    .line 179
    .local v9, "toAlpha":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v10, v1

    .line 180
    .local v10, "fromChannel":F
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v11, v1

    .line 182
    .local v11, "toChannel":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 183
    .local v12, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    new-instance v13, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;

    move-object v1, v13

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$CeqSBPdIhNYTow_6QM6a9ZwQyb8;-><init>(FFFFLandroid/widget/ImageView;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;

    move-object/from16 v2, p4

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 198
    .end local v8    # "fromAlpha":F
    .end local v9    # "toAlpha":F
    .end local v10    # "fromChannel":F
    .end local v11    # "toChannel":F
    .end local v12    # "anim":Landroid/animation/ValueAnimator;
    nop

    .line 202
    move/from16 v1, p2

    goto :goto_0

    .line 199
    :cond_1
    move-object/from16 v2, p4

    move/from16 v1, p2

    invoke-static {v7, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 200
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 202
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$animateGrayScale$1(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p0, "fromAlpha"    # F
    .param p1, "toAlpha"    # F
    .param p2, "fromChannel"    # F
    .param p3, "toChannel"    # F
    .param p4, "iv"    # Landroid/widget/ImageView;
    .param p5, "animation"    # Landroid/animation/ValueAnimator;

    .line 185
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 186
    .local v0, "fraction":F
    sub-float v1, p1, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    float-to-int v1, v1

    .line 187
    .local v1, "alpha":I
    sub-float v2, p3, p2

    mul-float/2addr v2, v0

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 189
    .local v2, "channel":I
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {p4, v3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 190
    return-void
.end method

.method public static synthetic lambda$setIcon$0(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "color"    # I

    .line 205
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 206
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .line 214
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 216
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    .line 68
    return-void
.end method

.method protected final exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .line 221
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getColor(I)I
    .locals 1
    .param p1, "state"    # I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .line 210
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 226
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getMeasuredWidth()I

    move-result v0

    .line 85
    .local v0, "w":I
    const/4 v1, 0x0

    .line 86
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    .line 87
    .local v2, "iconLeft":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 77
    .local v0, "w":I
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I

    move-result v1

    .line 78
    .local v1, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I

    move-result v3

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 140
    iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0603f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 145
    :goto_0
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    if-eq v0, v1, :cond_3

    .line 146
    iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I

    move-result v0

    .line 147
    .local v0, "color":I
    iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    .line 148
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    if-eqz v1, :cond_1

    .line 149
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSIconViewImpl$J1UpdvvSiFAmzZuy0PTr_V3YTn0;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V

    .line 150
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    goto :goto_2

    .line 152
    :cond_1
    instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    if-eqz v1, :cond_2

    .line 153
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;

    .line 154
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 158
    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 161
    .end local v0    # "color":I
    :goto_2
    goto :goto_3

    .line 162
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 164
    :goto_3
    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 92
    return-void
.end method

.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 11
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 95
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 96
    .local v0, "icon":Lcom/android/systemui/plugins/qs/QSTile$Icon;
    :goto_0
    const v1, 0x7f0a032a

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a032c

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I

    iget v4, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v4, :cond_1

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 103
    .local v2, "shouldAnimate":Z
    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 104
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    .line 105
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v5

    .line 106
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v7

    goto :goto_3

    :cond_5
    move v7, v4

    .line 107
    .local v7, "padding":I
    :goto_3
    if-eqz v6, :cond_6

    .line 108
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 112
    :cond_6
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateIcon: label="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", iconRes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_7
    instance-of v8, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    if-eqz v8, :cond_8

    .line 115
    move-object v8, p1

    check-cast v8, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    .line 116
    move-object v8, p1

    check-cast v8, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v8, v5, v6}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 118
    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 122
    iget-object v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p1, v4, v7, v4, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 124
    instance-of v1, v6, Landroid/graphics/drawable/Animatable2;

    if-eqz v1, :cond_9

    .line 125
    move-object v1, v6

    check-cast v1, Landroid/graphics/drawable/Animatable2;

    .line 126
    .local v1, "a":Landroid/graphics/drawable/Animatable2;
    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 127
    iget-boolean v3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v3, :cond_9

    .line 128
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V

    invoke-interface {v1, v3}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 137
    .end local v1    # "a":Landroid/graphics/drawable/Animatable2;
    .end local v2    # "shouldAnimate":Z
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "padding":I
    :cond_9
    return-void
.end method
