.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private final mRestBackgroundOutline:Landroid/graphics/Path;

.field private final mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070591

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .line 52
    return-void
.end method

.method private createThumbnailPath(IIIILandroid/graphics/Path;)V
    .locals 15
    .param p1, "outerLeft"    # I
    .param p2, "outerTop"    # I
    .param p3, "outerRight"    # I
    .param p4, "outerBottom"    # I
    .param p5, "outPath"    # Landroid/graphics/Path;

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 146
    move-object/from16 v13, p5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    .line 147
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    int-to-float v5, v3

    int-to-float v6, v2

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    int-to-float v5, v3

    iget v6, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v6, v4, v6

    int-to-float v6, v6

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    const/4 v14, 0x2

    mul-int/2addr v5, v14

    sub-int v5, v3, v5

    int-to-float v6, v5

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/2addr v5, v14

    sub-int v5, v4, v5

    int-to-float v7, v5

    int-to-float v8, v3

    int-to-float v9, v4

    const/4 v10, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v12, 0x0

    move-object v5, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 152
    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    int-to-float v6, v1

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/2addr v5, v14

    sub-int v5, v4, v5

    int-to-float v7, v5

    iget v5, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/2addr v14, v5

    add-int v5, v1, v14

    int-to-float v8, v5

    int-to-float v9, v4

    const/high16 v10, 0x42b40000    # 90.0f

    move-object v5, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 155
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 157
    return-void
.end method

.method private updateThumbnailOutline()V
    .locals 29

    .line 72
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 74
    .local v7, "titleHeight":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 75
    .local v8, "viewWidth":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v9, v0, v7

    .line 76
    .local v9, "viewHeight":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 76
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 78
    .local v10, "thumbnailWidth":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 78
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 81
    .local v11, "thumbnailHeight":I
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    if-lez v10, :cond_2

    if-lez v11, :cond_2

    .line 100
    const/4 v12, 0x0

    .line 101
    .local v12, "outerLeft":I
    const/4 v13, 0x0

    .line 102
    .local v13, "outerTop":I
    const/4 v14, 0x0

    add-int v15, v14, v10

    .line 103
    .local v15, "outerRight":I
    add-int v16, v14, v11

    .line 104
    .local v16, "outerBottom":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object v0, v6

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    .line 106
    const/4 v0, 0x0

    if-ge v10, v8, :cond_0

    .line 107
    iget v2, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v15, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 108
    .local v2, "l":I
    move v3, v15

    .line 109
    .local v3, "r":I
    const/4 v4, 0x0

    .line 110
    .local v4, "t":I
    move/from16 v5, v16

    .line 111
    .local v5, "b":I
    iget-object v14, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 112
    iget-object v14, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v1, v2

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    iget-object v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v14, v3

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    iget-object v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v14, v3

    iget v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v0, v5, v0

    int-to-float v0, v0

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    const/4 v14, 0x2

    mul-int/2addr v1, v14

    sub-int v1, v3, v1

    int-to-float v1, v1

    move/from16 v25, v4

    iget v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .end local v4    # "t":I
    .local v25, "t":I
    mul-int/2addr v4, v14

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v14, v3

    move/from16 v26, v3

    int-to-float v3, v5

    .end local v3    # "r":I
    .local v26, "r":I
    const/16 v22, 0x0

    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v14

    move/from16 v21, v3

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 117
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v1, v2

    int-to-float v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 122
    .end local v2    # "l":I
    .end local v5    # "b":I
    .end local v25    # "t":I
    .end local v26    # "r":I
    :cond_0
    if-ge v11, v9, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "l":I
    move v1, v15

    .line 125
    .local v1, "r":I
    iget v2, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v11, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 126
    .local v2, "t":I
    move/from16 v3, v16

    .line 127
    .local v3, "b":I
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 128
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v5, v2

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v5, v1

    int-to-float v14, v2

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v5, v1

    iget v14, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v14, v3, v14

    int-to-float v14, v14

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v4, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    const/4 v14, 0x2

    mul-int/2addr v5, v14

    sub-int v5, v1, v5

    int-to-float v5, v5

    move/from16 v27, v0

    iget v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .end local v0    # "l":I
    .local v27, "l":I
    mul-int/2addr v0, v14

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v14, v1

    move/from16 v28, v1

    int-to-float v1, v3

    .end local v1    # "r":I
    .local v28, "r":I
    const/16 v22, 0x0

    const/high16 v23, 0x42b40000    # 90.0f

    const/16 v24, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v1

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 133
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    const/4 v4, 0x0

    add-int v14, v4, v1

    int-to-float v1, v14

    int-to-float v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/16 v18, 0x0

    iget v1, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    const/4 v4, 0x2

    mul-int/2addr v1, v4

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    add-int v14, v5, v4

    int-to-float v4, v14

    int-to-float v5, v3

    const/high16 v22, 0x42b40000    # 90.0f

    move-object/from16 v17, v0

    move/from16 v19, v1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 136
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v0, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 139
    .end local v2    # "t":I
    .end local v3    # "b":I
    .end local v12    # "outerLeft":I
    .end local v13    # "outerTop":I
    .end local v15    # "outerRight":I
    .end local v16    # "outerBottom":I
    .end local v27    # "l":I
    .end local v28    # "r":I
    :cond_1
    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, v6, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    move-object v0, v6

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    .line 142
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070590

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 163
    .local v0, "titleHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 164
    .local v1, "viewWidth":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    .line 165
    .local v2, "viewHeight":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 165
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 167
    .local v3, "thumbnailWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 167
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 170
    .local v4, "thumbnailHeight":I
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v5, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    .line 172
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 175
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUserLocked:Z

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    if-lez v4, :cond_4

    .line 179
    if-ge v3, v1, :cond_2

    .line 181
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    :cond_2
    if-ge v4, v2, :cond_3

    .line 185
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    :goto_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 61
    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 68
    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 69
    return-void
.end method
