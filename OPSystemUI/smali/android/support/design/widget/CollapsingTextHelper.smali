.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedShadowColor:I

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFraction:F

.field private expandedShadowColor:I

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private isRtl:Z

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textureAscent:F

.field private textureDescent:F

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 53
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 68
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 69
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 70
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 118
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 120
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 121
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 126
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 752
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 753
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 754
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 755
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 756
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 757
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .locals 13

    .line 442
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 445
    .local v0, "currentTextSize":F
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 446
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 447
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 448
    .local v1, "width":F
    :goto_0
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    iget-boolean v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 449
    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 452
    .local v4, "collapsedAbsGravity":I
    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 461
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 462
    .local v5, "textHeight":F
    div-float v9, v5, v8

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    .line 463
    .local v9, "textOffset":F
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iput v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .end local v5    # "textHeight":F
    .end local v9    # "textOffset":F
    goto :goto_1

    .line 454
    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .line 455
    goto :goto_1

    .line 457
    :cond_2
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .line 458
    nop

    .line 466
    :goto_1
    const v5, 0x800007

    and-int v9, v4, v5

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_3

    .line 475
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_2

    .line 471
    :cond_3
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    .line 472
    goto :goto_2

    .line 468
    :cond_4
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v1, v8

    sub-float/2addr v9, v12

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    .line 469
    nop

    .line 479
    :goto_2
    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-direct {p0, v9}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 480
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    iget-object v12, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v2, v9, v3, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    nop

    :cond_5
    move v1, v2

    .line 481
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 482
    invoke-static {v2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 485
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    .line 494
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    .line 495
    .local v3, "textHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 496
    .local v6, "textOffset":F
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .end local v3    # "textHeight":F
    .end local v6    # "textOffset":F
    goto :goto_3

    .line 487
    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .line 488
    goto :goto_3

    .line 490
    :cond_7
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .line 491
    nop

    .line 499
    :goto_3
    and-int v3, v2, v5

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    .line 508
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_4

    .line 504
    :cond_8
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    .line 505
    goto :goto_4

    .line 501
    :cond_9
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    .line 502
    nop

    .line 513
    :goto_4
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 515
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 516
    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .line 393
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 394
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 573
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 574
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 575
    .local v0, "defaultIsRtl":Z
    if-eqz v0, :cond_1

    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 578
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 575
    return v1
.end method

.method private calculateOffsets(F)V
    .locals 6
    .param p1, "fraction"    # F

    .line 397
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 398
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 399
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 401
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 402
    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 401
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 404
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 408
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 413
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 414
    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 415
    invoke-static {v2, v4, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 416
    invoke-static {v4, v5, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 417
    invoke-static {v4, v5, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v4

    .line 413
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 419
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 420
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 10
    .param p1, "textSize"    # F

    .line 597
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 602
    .local v0, "collapsedWidth":F
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 606
    .local v1, "expandedWidth":F
    const/4 v2, 0x0

    .line 608
    .local v2, "updateDrawText":Z
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-static {p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 609
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 610
    .local v3, "newTextSize":F
    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 611
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_1

    .line 612
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    iput-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 613
    const/4 v2, 0x1

    .line 615
    :cond_1
    move v5, v0

    .local v5, "availableWidth":F
    goto :goto_1

    .line 617
    .end local v3    # "newTextSize":F
    .end local v5    # "availableWidth":F
    :cond_2
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 618
    .restart local v3    # "newTextSize":F
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_3

    .line 619
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 620
    const/4 v2, 0x1

    .line 622
    :cond_3
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-static {p1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 624
    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    goto :goto_0

    .line 627
    :cond_4
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float v5, p1, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 630
    :goto_0
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v5, v6

    .line 633
    .local v5, "textSizeRatio":F
    mul-float v6, v1, v5

    .line 635
    .local v6, "scaledDownWidth":F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_5

    .line 639
    div-float v7, v0, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 642
    .local v7, "availableWidth":F
    move v5, v7

    goto :goto_1

    .end local v5    # "textSizeRatio":F
    .end local v6    # "scaledDownWidth":F
    .end local v7    # "availableWidth":F
    :cond_5
    move v5, v1

    .line 646
    .local v5, "availableWidth":F
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_8

    .line 647
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_7

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v7

    :goto_3
    move v2, v6

    .line 648
    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 649
    iput-boolean v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 652
    :cond_8
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    if-eqz v2, :cond_b

    .line 653
    :cond_9
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 654
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 656
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v7, v8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 659
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 660
    invoke-static {v4, v6, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 661
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 662
    iput-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 663
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 666
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_b
    return-void
.end method

.method private clearTexture()V
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 727
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 10

    .line 669
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 674
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    .line 675
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    .line 677
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 678
    .local v0, "w":I
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 680
    .local v1, "h":I
    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 684
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 686
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 687
    .local v3, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    int-to-float v2, v1

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float v8, v2, v8

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 689
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 691
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    .line 693
    :cond_2
    return-void

    .line 681
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    return-void

    .line 670
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3

    .line 424
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 207
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 208
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 519
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 520
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 521
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 522
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 523
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 525
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 526
    return-void
.end method

.method private static isClose(FF)Z
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .line 734
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 762
    if-eqz p3, :cond_0

    .line 763
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 765
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "resId"    # I

    .line 306
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 311
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object v2

    .line 314
    .end local v1    # "family":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    nop

    .line 316
    const/4 v1, 0x0

    return-object v1

    .line 314
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 769
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 582
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 585
    sget-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    .line 587
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v0, :cond_1

    .line 589
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 592
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 593
    return-void
.end method


# virtual methods
.method calculateCollapsedTextWidth()F
    .locals 4

    .line 183
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 531
    .local v0, "saveCount":I
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    if-eqz v1, :cond_5

    .line 532
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 533
    .local v1, "x":F
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 535
    .local v2, "y":F
    iget-boolean v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    .line 539
    .local v9, "drawTexture":Z
    if-eqz v9, :cond_1

    .line 540
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float/2addr v3, v4

    .line 541
    .local v3, "ascent":F
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float/2addr v4, v5

    .line 544
    .end local v3    # "ascent":F
    .local v4, "descent":F
    .local v10, "ascent":F
    :goto_1
    move v10, v3

    goto :goto_2

    .line 543
    .end local v4    # "descent":F
    .end local v10    # "ascent":F
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float/2addr v3, v4

    .line 544
    .restart local v3    # "ascent":F
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float/2addr v4, v5

    goto :goto_1

    .end local v3    # "ascent":F
    .restart local v4    # "descent":F
    .restart local v10    # "ascent":F
    :goto_2
    move v11, v4

    .line 553
    .end local v4    # "descent":F
    .local v11, "descent":F
    if-eqz v9, :cond_2

    .line 554
    add-float/2addr v2, v10

    .line 557
    .end local v2    # "y":F
    .local v12, "y":F
    :cond_2
    move v12, v2

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 558
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    invoke-virtual {p1, v2, v3, v1, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 561
    :cond_3
    if-eqz v9, :cond_4

    .line 563
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 565
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v6, v1

    move v7, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 569
    .end local v1    # "x":F
    .end local v9    # "drawTexture":Z
    .end local v10    # "ascent":F
    .end local v11    # "descent":F
    .end local v12    # "y":F
    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 570
    return-void
.end method

.method getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 197
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 199
    .local v0, "isRtl":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 200
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 201
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 202
    if-nez v0, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 203
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 204
    return-void
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 742
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCollapsedTextHeight()F
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 193
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method getCurrentCollapsedTextColor()I
    .locals 3

    .line 434
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method getExpansionFraction()F
    .locals 1

    .line 381
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .line 719
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 377
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0
.end method

.method onBoundsChanged()V
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    .line 217
    return-void
.end method

.method public recalculate()V
    .locals 1

    .line 696
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 699
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 700
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 702
    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 178
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 242
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 243
    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 245
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 250
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    float-to-int v2, v2

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 256
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 258
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 260
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 262
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 264
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 267
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 271
    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 154
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 157
    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 231
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 232
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 233
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 235
    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 170
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 274
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 275
    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 277
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 279
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 282
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    float-to-int v2, v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 288
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    .line 290
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 291
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    .line 292
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    .line 294
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    .line 296
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 298
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 299
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 302
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 303
    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 161
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 162
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 164
    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 220
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 221
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 222
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 224
    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 139
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 143
    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 356
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result p1

    .line 358
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 359
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    .line 360
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 362
    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 134
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 135
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 136
    return-void
.end method

.method final setState([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 365
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    .line 367
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 369
    const/4 v0, 0x1

    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 710
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 713
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 714
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 716
    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 129
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 131
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 336
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 337
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 338
    return-void
.end method
