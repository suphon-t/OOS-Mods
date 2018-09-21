.class Lcom/android/systemui/recents/views/FakeShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FakeShadowDrawable.java"


# static fields
.field static final COS_45:D


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:F

.field mMaxShadowSize:F

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 86
    const v1, 0x7f0601b1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    .line 87
    const v1, 0x7f0601b0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    .line 88
    const v1, 0x7f0701c3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    .line 89
    const v1, 0x7f0701c4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 89
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->setShadowSize(FF)V

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 95
    const v0, 0x7f070591

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 97
    :cond_0
    const v0, 0x7f0705b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 100
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 273
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 274
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildShadowCorners()V

    .line 277
    return-void
.end method

.method private buildShadowCorners()V
    .locals 26

    .line 236
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v3, v3

    iget v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v5, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 237
    .local v1, "innerBounds":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 238
    .local v2, "outerBounds":Landroid/graphics/RectF;
    iget v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v3, v3

    iget v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 240
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v3, :cond_0

    .line 241
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 245
    :goto_0
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 246
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 247
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 249
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 251
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 252
    iget-object v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 254
    iget v3, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v6, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    .line 255
    .local v3, "startRatio":F
    iget-object v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v11, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v11, v8

    const/4 v15, 0x3

    new-array v12, v15, [I

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v8, v12, v7

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/16 v16, 0x1

    aput v8, v12, v16

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const/16 v17, 0x2

    aput v8, v12, v17

    new-array v13, v15, [F

    aput v5, v13, v7

    aput v3, v13, v16

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v13, v17

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    iget-object v4, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    iget v6, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v6, v6

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float v20, v6, v8

    const/16 v21, 0x0

    iget v6, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v6, v6

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float v22, v6, v8

    new-array v6, v15, [I

    iget v8, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v8, v6, v7

    iget v7, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v7, v6, v16

    iget v7, v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    aput v7, v6, v17

    new-array v7, v15, [F

    fill-array-data v7, :array_0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 267
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 158
    if-eqz p2, :cond_0

    .line 159
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 161
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 149
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 150
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 152
    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 188
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float/2addr v0, v1

    .line 189
    .local v0, "edgeShadowTop":F
    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    .line 190
    .local v1, "inset":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v8, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v9, v2

    .line 191
    .local v9, "drawHorizontalEdges":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v6, v8, v1

    sub-float/2addr v2, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v4, v5

    nop

    :cond_1
    move v10, v4

    .line 193
    .local v10, "drawVerticalEdges":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 194
    .local v11, "saved":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    if-eqz v9, :cond_2

    .line 197
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 198
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 197
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 204
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 206
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    if-eqz v9, :cond_3

    .line 208
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 209
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float v6, v2, v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 208
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 212
    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 215
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 218
    if-eqz v10, :cond_4

    .line 219
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 220
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 219
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    :cond_4
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 225
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 227
    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    if-eqz v10, :cond_5

    .line 229
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 230
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v8, v1

    sub-float v5, v2, v8

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 229
    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    :cond_5
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 233
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 184
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 173
    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 139
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 141
    .local v0, "vOffset":I
    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 143
    .local v1, "hOffset":I
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    const/4 v2, 0x1

    return v2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 112
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 169
    return-void
.end method

.method setShadowSize(FF)V
    .locals 3
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .line 115
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    .line 118
    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 119
    move p1, p2

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_0

    .line 121
    const-string v0, "CardView"

    const-string v2, "Shadow size is being clipped by the max shadow size. See {CardView#setMaxCardElevation}."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 126
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 127
    return-void

    .line 129
    :cond_1
    iput p1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    .line 130
    iput p2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    .line 131
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    .line 132
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->invalidateSelf()V

    .line 135
    return-void

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
