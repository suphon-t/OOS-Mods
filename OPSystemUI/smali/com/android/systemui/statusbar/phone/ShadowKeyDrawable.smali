.class public Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowKeyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;-><init>(Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 53
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private regenerateBitmapCache()V
    .locals 17

    .line 134
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 135
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 136
    .local v2, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 137
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v7

    double-to-float v5, v5

    .line 142
    .local v5, "radians":F
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowSize:I

    if-nez v6, :cond_0

    .line 143
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mRotateDegrees:F

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 147
    :cond_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 148
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseWidth:I

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v8, v8, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseHeight:I

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v7, :cond_1

    .line 153
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 154
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BlurMaskFilter;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v8, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 155
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 157
    .local v8, "offset":[I
    invoke-virtual {v3, v7, v8}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 159
    .local v10, "shadow":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 160
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v11, v11, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 163
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v11, v11, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mRotateDegrees:F

    div-int/lit8 v12, v1, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v2, 0x2

    int-to-float v13, v13

    invoke-virtual {v4, v11, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 165
    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v13, v13, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    float-to-double v13, v5

    .line 166
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v15, v15, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetX:I

    move-object/from16 v16, v10

    int-to-double v9, v15

    .end local v10    # "shadow":Landroid/graphics/Bitmap;
    .local v16, "shadow":Landroid/graphics/Bitmap;
    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    double-to-float v9, v11

    .line 167
    .local v9, "shadowOffsetX":F
    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v12, v12, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    float-to-double v12, v5

    .line 168
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v14, v14, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v10, v10

    .line 170
    .local v10, "shadowOffsetY":F
    const/4 v11, 0x0

    aget v12, v8, v11

    int-to-float v11, v12

    add-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    int-to-float v12, v12

    add-float/2addr v12, v10

    move-object/from16 v13, v16

    invoke-virtual {v4, v13, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    .end local v16    # "shadow":Landroid/graphics/Bitmap;
    .local v13, "shadow":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "offset":[I
    .end local v9    # "shadowOffsetX":F
    .end local v10    # "shadowOffsetY":F
    .end local v13    # "shadow":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 175
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput-object v3, v7, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 177
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->regenerateBitmapCache()V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mBaseWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 115
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "degrees"    # F

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->invalidateSelf()V

    .line 61
    :cond_0
    return-void
.end method

.method public setShadowProperties(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "size"    # I
    .param p4, "color"    # I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput p2, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput p3, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowSize:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    iput p4, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mShadowColor:I

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->mState:Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->invalidateSelf()V

    .line 73
    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .line 93
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 94
    return-void
.end method
