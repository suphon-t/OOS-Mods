.class public Lcom/android/systemui/stackdivider/MinimizedDockShadow;
.super Landroid/view/View;
.source "MinimizedDockShadow.java"


# instance fields
.field private mDockSide:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    .line 43
    return-void
.end method

.method private updatePaint(IIII)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    move-object/from16 v0, p0

    .line 54
    iget-object v1, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0602bd

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 56
    .local v1, "startColor":I
    iget-object v3, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602bc

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 58
    .local v2, "endColor":I
    nop

    .line 59
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 58
    const/4 v5, 0x0

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 60
    .local v3, "middleColor":I
    nop

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 60
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 63
    .local v6, "quarter":I
    iget v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x4

    if-ne v7, v4, :cond_0

    .line 64
    iget-object v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v11, p4, p2

    int-to-float v11, v11

    new-array v12, v10, [I

    aput v1, v12, v5

    aput v3, v12, v9

    aput v6, v12, v4

    aput v2, v12, v8

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, v11

    move-object v11, v13

    move-object v9, v12

    const/4 v8, 0x0

    move v12, v8

    move-object v8, v13

    move v13, v14

    move v14, v15

    move v15, v5

    move-object/from16 v16, v9

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    .line 68
    :cond_0
    iget v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-ne v7, v9, :cond_1

    .line 69
    iget-object v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    sub-int v11, p3, p1

    int-to-float v11, v11

    const/4 v15, 0x0

    new-array v12, v10, [I

    aput v1, v12, v5

    aput v3, v12, v9

    aput v6, v12, v4

    aput v2, v12, v8

    new-array v4, v10, [F

    fill-array-data v4, :array_1

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, v11

    move-object v11, v13

    move-object v9, v12

    const/4 v8, 0x0

    move v12, v8

    move-object v8, v13

    move v13, v14

    move v14, v5

    move-object/from16 v16, v9

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 73
    :cond_1
    iget v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-ne v7, v8, :cond_2

    .line 74
    iget-object v7, v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    sub-int v11, p3, p1

    int-to-float v12, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-array v11, v10, [I

    aput v1, v11, v5

    aput v3, v11, v9

    aput v6, v11, v4

    aput v2, v11, v8

    new-array v4, v10, [F

    fill-array-data v4, :array_2

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v11

    move-object v11, v13

    move-object v8, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    .line 88
    :cond_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 4
    .param p1, "dockSide"    # I

    .line 46
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-eq p1, v0, :cond_0

    .line 47
    iput p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    .line 51
    :cond_0
    return-void
.end method
