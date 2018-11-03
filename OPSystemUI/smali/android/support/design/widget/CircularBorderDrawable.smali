.class Landroid/support/design/widget/CircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularBorderDrawable.java"


# instance fields
.field private borderTint:Landroid/content/res/ColorStateList;

.field borderWidth:F

.field private bottomInnerStrokeColor:I

.field private bottomOuterStrokeColor:I

.field private currentBorderTintColor:I

.field private invalidateShader:Z

.field final paint:Landroid/graphics/Paint;

.field final rect:Landroid/graphics/Rect;

.field final rectF:Landroid/graphics/RectF;

.field private rotation:F

.field private topInnerStrokeColor:I

.field private topOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 13

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    .line 183
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 185
    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderWidth:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 187
    .local v1, "borderRatio":F
    const/4 v2, 0x6

    new-array v11, v2, [I

    .line 188
    .local v11, "colors":[I
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->topOuterStrokeColor:I

    iget v4, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v4}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v11, v4

    .line 189
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->topInnerStrokeColor:I

    iget v5, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v5}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v11, v5

    .line 190
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->topInnerStrokeColor:I

    .line 192
    invoke-static {v3, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    iget v6, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    .line 191
    invoke-static {v3, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v11, v6

    .line 193
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->bottomInnerStrokeColor:I

    .line 195
    invoke-static {v3, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    iget v7, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    .line 194
    invoke-static {v3, v7}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v11, v7

    .line 196
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->bottomInnerStrokeColor:I

    iget v8, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v8}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v8, 0x4

    aput v3, v11, v8

    .line 197
    iget v3, p0, Landroid/support/design/widget/CircularBorderDrawable;->bottomOuterStrokeColor:I

    iget v9, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v9}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v9, 0x5

    aput v3, v11, v9

    .line 199
    new-array v2, v2, [F

    .line 200
    .local v2, "positions":[F
    const/4 v3, 0x0

    aput v3, v2, v4

    .line 201
    aput v1, v2, v5

    .line 202
    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v6

    .line 203
    aput v3, v2, v7

    .line 204
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v1

    aput v4, v2, v8

    .line 205
    aput v3, v2, v9

    .line 207
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v12
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    iget-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/widget/CircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 93
    .local v0, "halfBorderWidth":F
    iget-object v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->rectF:Landroid/graphics/RectF;

    .line 97
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 98
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 99
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 100
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 101
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 102
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->rotation:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 107
    iget-object v2, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void
.end method

.method public getOpacity()I
    .locals 2

    .line 141
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 113
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 114
    .local v0, "borderWidth":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    const/4 v1, 0x1

    return v1
.end method

.method public isStateful()Z
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 154
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 165
    .local v0, "newColor":I
    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    if-eq v0, v1, :cond_0

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 167
    iput v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    .line 170
    .end local v0    # "newColor":I
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 173
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 120
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 122
    return-void
.end method

.method setBorderTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->getState()[I

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->currentBorderTintColor:I

    .line 128
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderTint:Landroid/content/res/ColorStateList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 130
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 131
    return-void
.end method

.method setBorderWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 77
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 78
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->borderWidth:F

    .line 79
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->invalidateShader:Z

    .line 81
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 83
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 137
    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0
    .param p1, "topOuterStrokeColor"    # I
    .param p2, "topInnerStrokeColor"    # I
    .param p3, "bottomOuterStrokeColor"    # I
    .param p4, "bottomInnerStrokeColor"    # I

    .line 69
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->topOuterStrokeColor:I

    .line 70
    iput p2, p0, Landroid/support/design/widget/CircularBorderDrawable;->topInnerStrokeColor:I

    .line 71
    iput p3, p0, Landroid/support/design/widget/CircularBorderDrawable;->bottomOuterStrokeColor:I

    .line 72
    iput p4, p0, Landroid/support/design/widget/CircularBorderDrawable;->bottomInnerStrokeColor:I

    .line 73
    return-void
.end method

.method final setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 145
    iget v0, p0, Landroid/support/design/widget/CircularBorderDrawable;->rotation:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 146
    iput p1, p0, Landroid/support/design/widget/CircularBorderDrawable;->rotation:F

    .line 147
    invoke-virtual {p0}, Landroid/support/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 149
    :cond_0
    return-void
.end method
