.class public Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dot"
.end annotation


# instance fields
.field mAlpha:F

.field mArrowImageRadius:F

.field mCenterX:F

.field mDiameter:F

.field mDirection:F

.field mFgColor:I

.field mLayoutDirection:F

.field mRadius:F

.field mTranslationX:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PagingIndicator;


# virtual methods
.method public adjustAlpha()V
    .locals 5

    .line 499
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 500
    .local v0, "alpha":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 501
    .local v1, "red":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 502
    .local v2, "green":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 503
    .local v3, "blue":I
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    .line 504
    return-void
.end method

.method deselect()V
    .locals 3

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 490
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 491
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 492
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 493
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 494
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 495
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 496
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 537
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    add-float/2addr v0, v1

    .line 538
    .local v0, "centerX":F
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 539
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 540
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 542
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v5, v5, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v6, v0

    float-to-int v6, v6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v7, v7, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 547
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 507
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    return v0
.end method

.method public getDiameter()F
    .locals 1

    .line 526
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 517
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    return v0
.end method

.method onRtlPropertiesChanged()V
    .locals 1

    .line 550
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    .line 551
    return-void
.end method

.method select()V
    .locals 2

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 480
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 481
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 482
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 483
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 484
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 485
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 486
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 511
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 512
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 513
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 514
    return-void
.end method

.method public setDiameter(F)V
    .locals 2
    .param p1, "diameter"    # F

    .line 530
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 531
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    iput v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 532
    div-float v0, p1, v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 533
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 534
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2
    .param p1, "translationX"    # F

    .line 521
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 522
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 523
    return-void
.end method
