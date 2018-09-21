.class public Landroid/support/v17/leanback/widget/HorizontalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .line 292
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 302
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 306
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 283
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 285
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 288
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private needsFadingHighEdge()Z
    .locals 7

    .line 267
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    return v1

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    .line 271
    .local v0, "c":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 272
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 273
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v5

    .line 274
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v5, v6

    if-le v4, v5, :cond_1

    .line 275
    const/4 v1, 0x1

    return v1

    .line 271
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 278
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private needsFadingLowEdge()Z
    .locals 7

    .line 253
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    return v1

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    .line 257
    .local v0, "c":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 259
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 260
    const/4 v1, 0x1

    return v1

    .line 257
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private updateLayerType()V
    .locals 3

    .line 388
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_1

    .line 389
    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 390
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    .line 395
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 311
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v2

    .line 312
    .local v2, "needsFadingLow":Z
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v3

    .line 313
    .local v3, "needsFadingHigh":Z
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 314
    iput-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 316
    :cond_0
    if-nez v3, :cond_1

    .line 317
    iput-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 319
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 320
    invoke-super/range {p0 .. p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 321
    return-void

    .line 324
    :cond_2
    iget-boolean v5, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v5

    iget v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v7

    iget v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    .line 325
    .local v5, "lowEdge":I
    :goto_0
    iget-boolean v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 326
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v7

    .line 329
    .local v7, "highEdge":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 330
    .local v8, "save":I
    iget-boolean v9, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v9, :cond_5

    iget v9, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    add-int/2addr v9, v5

    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v10, :cond_6

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    sub-int v10, v7, v10

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    .line 330
    invoke-virtual {v1, v9, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 332
    invoke-super/range {p0 .. p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 333
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 335
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 336
    .local v9, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 337
    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 338
    const/4 v15, 0x0

    if-eqz v2, :cond_7

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v10, :cond_7

    .line 339
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 340
    .local v14, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v14, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 341
    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 343
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 344
    .local v13, "tmpSave":I
    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 345
    neg-int v10, v5

    int-to-float v10, v10

    invoke-virtual {v9, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    invoke-super {v0, v9}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 347
    invoke-virtual {v9, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 349
    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 350
    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move/from16 v17, v10

    move-object v10, v9

    move/from16 v18, v13

    move/from16 v13, v17

    .end local v13    # "tmpSave":I
    .local v18, "tmpSave":I
    move-object/from16 v19, v14

    move v14, v15

    .end local v14    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v19, "tempBitmap":Landroid/graphics/Bitmap;
    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 353
    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 354
    int-to-float v4, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 355
    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v11, v19

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v4, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 356
    .end local v19    # "tempBitmap":Landroid/graphics/Bitmap;
    .local v11, "tempBitmap":Landroid/graphics/Bitmap;
    neg-int v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    .end local v11    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "tmpSave":I
    :cond_7
    if-eqz v3, :cond_8

    iget v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v4, :cond_8

    .line 359
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 360
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 361
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 364
    .local v14, "tmpSave":I
    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 365
    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v10, v7, v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    invoke-super {v0, v9}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 369
    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 370
    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v15, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move/from16 v16, v10

    move-object v10, v9

    move/from16 v17, v14

    move/from16 v14, v16

    .end local v14    # "tmpSave":I
    .local v17, "tmpSave":I
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 372
    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->left:I

    .line 373
    iget-object v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 374
    iget v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v6, v7, v6

    int-to-float v6, v6

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 375
    iget-object v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v6, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    iget v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v6, v7, v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "tmpSave":I
    :cond_8
    return-void
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    .line 85
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 88
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .line 104
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    .line 105
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    .line 106
    return-void
.end method

.method public setRowHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 116
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    .line 117
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    .line 118
    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .line 93
    sget v0, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 94
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 95
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 96
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 98
    .end local v1    # "size":I
    :cond_0
    return-void
.end method
