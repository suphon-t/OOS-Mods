.class Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;
.super Ljava/lang/Object;
.source "TaskGridLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskGridRectInfo"
.end annotation


# instance fields
.field lines:I

.field size:Landroid/graphics/Rect;

.field tasksPerLine:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

.field xOffsets:[I

.field yOffsets:[I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;I)V
    .locals 19
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .param p2, "taskCount"    # I

    move-object/from16 v0, p0

    .line 75
    move/from16 v1, p2

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->this$0:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    .line 77
    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    .line 78
    new-array v3, v1, [I

    iput-object v3, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    .line 80
    const/16 v3, 0x8

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 81
    .local v3, "layoutTaskCount":I
    invoke-direct {v0, v3}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->getTasksPerLine(I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 82
    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    iput v7, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    if-le v7, v8, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v9

    .line 86
    .local v7, "landscapeWindow":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v9

    .line 88
    .local v8, "landscapeTaskView":Z
    :goto_2
    const/4 v10, 0x7

    if-nez v7, :cond_7

    if-eqz v8, :cond_7

    .line 89
    if-ge v3, v5, :cond_3

    move v11, v6

    goto :goto_3

    :cond_3
    move v11, v5

    :goto_3
    iput v11, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 90
    const/4 v11, 0x3

    if-ge v3, v11, :cond_4

    .line 92
    move v11, v6

    goto :goto_4

    .line 91
    :cond_4
    const/4 v12, 0x5

    if-ge v3, v12, :cond_5

    .line 92
    move v11, v5

    goto :goto_4

    :cond_5
    if-ge v3, v10, :cond_6

    goto :goto_4

    :cond_6
    move v11, v4

    :goto_4
    iput v11, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 95
    :cond_7
    if-eqz v7, :cond_a

    if-nez v8, :cond_a

    .line 96
    if-ge v3, v10, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    const/4 v4, 0x6

    :goto_5
    iput v4, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    .line 97
    if-ge v3, v10, :cond_9

    move v4, v6

    goto :goto_6

    :cond_9
    move v4, v5

    :goto_6
    iput v4, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    .line 101
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v10

    mul-int/2addr v10, v5

    sub-int/2addr v4, v10

    iget v10, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    sub-int/2addr v10, v6

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v11

    mul-int/2addr v10, v11

    sub-int/2addr v4, v10

    iget v10, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int/2addr v4, v10

    .line 103
    .local v4, "maxTaskWidth":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v11

    mul-int/2addr v11, v5

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    sub-int/2addr v11, v6

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v12

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    div-int/2addr v10, v11

    .line 106
    .local v10, "maxTaskHeight":I
    int-to-float v11, v10

    int-to-float v12, v4

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v13

    div-float/2addr v12, v13

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    cmpl-float v11, v11, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    if-ltz v11, :cond_b

    .line 108
    move v11, v4

    .line 110
    .local v11, "taskWidth":I
    int-to-float v14, v4

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v15

    div-float/2addr v14, v15

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-int v12, v14

    .local v12, "taskHeight":I
    goto :goto_7

    .line 113
    .end local v11    # "taskWidth":I
    .end local v12    # "taskHeight":I
    :cond_b
    move v11, v10

    .line 115
    .local v11, "taskHeight":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$500(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v14

    sub-int v14, v11, v14

    int-to-float v14, v14

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$100(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v14, v12

    double-to-int v12, v14

    move/from16 v18, v12

    move v12, v11

    move/from16 v11, v18

    .line 117
    .local v11, "taskWidth":I
    .restart local v12    # "taskHeight":I
    :goto_7
    iget-object v13, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->size:Landroid/graphics/Rect;

    invoke-virtual {v13, v9, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v14

    mul-int/2addr v14, v5

    sub-int/2addr v13, v14

    iget v14, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    mul-int/2addr v14, v11

    sub-int/2addr v13, v14

    iget v14, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    sub-int/2addr v14, v6

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v15

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    .line 121
    .local v13, "emptySpaceX":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v15

    mul-int/2addr v5, v15

    sub-int/2addr v14, v5

    iget v5, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    mul-int/2addr v5, v12

    sub-int/2addr v14, v5

    iget v5, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->lines:I

    sub-int/2addr v5, v6

    .line 122
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v15

    mul-int/2addr v5, v15

    sub-int/2addr v14, v5

    .line 123
    .local v14, "emptySpaceY":I
    nop

    .local v9, "taskIndex":I
    :goto_8
    move v5, v9

    .end local v9    # "taskIndex":I
    .local v5, "taskIndex":I
    if-ge v5, v1, :cond_c

    .line 125
    sub-int v9, v1, v5

    sub-int/2addr v9, v6

    .line 127
    .local v9, "taskLayoutIndex":I
    iget v15, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    rem-int v15, v9, v15

    .line 128
    .local v15, "xIndex":I
    iget v6, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->tasksPerLine:I

    div-int v6, v9, v6

    .line 129
    .local v6, "yIndex":I
    iget-object v1, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->xOffsets:[I

    move/from16 v16, v3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v3

    .end local v3    # "layoutTaskCount":I
    .local v16, "layoutTaskCount":I
    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v17, v13, 0x2

    add-int v3, v3, v17

    .line 130
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$200(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v3, v3, v17

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v17, v11, v17

    mul-int v17, v17, v15

    add-int v3, v3, v17

    aput v3, v1, v5

    .line 131
    iget-object v1, v0, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm$TaskGridRectInfo;->yOffsets:[I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$000(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v17, v14, 0x2

    add-int v3, v3, v17

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$400(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v3, v3, v17

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->access$300(Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)I

    move-result v17

    add-int v17, v12, v17

    mul-int v17, v17, v6

    add-int v3, v3, v17

    aput v3, v1, v5

    .line 123
    .end local v6    # "yIndex":I
    .end local v9    # "taskLayoutIndex":I
    .end local v15    # "xIndex":I
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "taskIndex":I
    .local v9, "taskIndex":I
    move/from16 v3, v16

    move/from16 v1, p2

    const/4 v6, 0x1

    goto :goto_8

    .line 134
    .end local v9    # "taskIndex":I
    .end local v16    # "layoutTaskCount":I
    .restart local v3    # "layoutTaskCount":I
    :cond_c
    move/from16 v16, v3

    .end local v3    # "layoutTaskCount":I
    .restart local v16    # "layoutTaskCount":I
    return-void
.end method

.method private getTasksPerLine(I)I
    .locals 3
    .param p1, "taskCount"    # I

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported task count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 148
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 144
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 141
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 139
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
