.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 1
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;

    .line 98
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 19
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "detectMoves"    # Z

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 117
    .local v0, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 119
    .local v1, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 125
    .local v9, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v3, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int v3, v0, v1

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v18, v3, v4

    .line 131
    .local v18, "max":I
    mul-int/lit8 v3, v18, 0x2

    new-array v8, v3, [I

    .line 132
    .local v8, "forward":[I
    mul-int/lit8 v3, v18, 0x2

    new-array v7, v3, [I

    .line 135
    .local v7, "backward":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_0
    move-object v6, v3

    .line 136
    .end local v3    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v6, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 137
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Range;

    .line 138
    .local v3, "range":Landroid/support/v7/util/DiffUtil$Range;
    iget v11, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iget v12, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    iget v13, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iget v14, v3, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v7

    move/from16 v17, v18

    invoke-static/range {v10 .. v17}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v4

    .line 140
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v4, :cond_6

    .line 141
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v5, :cond_0

    .line 142
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 146
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 149
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct {v5}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    goto :goto_1

    .line 150
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 149
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/DiffUtil$Range;

    .line 151
    .local v5, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_1
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 152
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 153
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v10, :cond_2

    .line 154
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 155
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 157
    :cond_2
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v10, :cond_3

    .line 158
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 159
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_2

    .line 161
    :cond_3
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 165
    :goto_2
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object v10, v3

    .line 170
    .local v10, "right":Landroid/support/v7/util/DiffUtil$Range;
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v11, :cond_5

    .line 171
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v11, :cond_4

    .line 172
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 173
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 175
    :cond_4
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 176
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_3

    .line 179
    :cond_5
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 182
    :goto_3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v5    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v10    # "right":Landroid/support/v7/util/DiffUtil$Range;
    goto :goto_4

    .line 184
    :cond_6
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v3    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_4
    nop

    .line 135
    move-object v3, v6

    goto/16 :goto_0

    .line 189
    :cond_7
    sget-object v3, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object v3, v10

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v11, v6

    move-object v6, v8

    .end local v6    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v11, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    move-object v12, v7

    .end local v7    # "backward":[I
    .local v12, "backward":[I
    move-object v13, v8

    move/from16 v8, p1

    .end local v8    # "forward":[I
    .local v13, "forward":[I
    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 21
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 197
    sub-int v6, p2, p1

    .line 198
    .local v6, "oldSize":I
    sub-int v7, p4, p3

    .line 200
    .local v7, "newSize":I
    sub-int v8, p2, p1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_11

    sub-int v8, p4, p3

    if-ge v8, v9, :cond_0

    .line 201
    move/from16 v18, v6

    move/from16 v19, v7

    goto/16 :goto_b

    .line 204
    :cond_0
    sub-int v8, v6, v7

    .line 205
    .local v8, "delta":I
    add-int v10, v6, v7

    add-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    .line 206
    .local v10, "dLimit":I
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int v12, p7, v10

    add-int/2addr v12, v9

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 207
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int/2addr v11, v8

    add-int v12, p7, v10

    add-int/2addr v12, v9

    add-int/2addr v12, v8

    invoke-static {v5, v11, v12, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 208
    rem-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v13

    .line 209
    .local v11, "checkInFwd":Z
    :goto_0
    move v12, v13

    .local v12, "d":I
    :goto_1
    if-gt v12, v10, :cond_10

    .line 210
    neg-int v13, v12

    .local v13, "k":I
    :goto_2
    if-gt v13, v12, :cond_9

    .line 215
    neg-int v9, v12

    if-eq v13, v9, :cond_4

    if-eq v13, v12, :cond_2

    add-int v9, p7, v13

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    aget v9, v4, v9

    add-int v16, p7, v13

    add-int/lit8 v16, v16, 0x1

    aget v2, v4, v16

    if-ge v9, v2, :cond_3

    goto :goto_3

    .line 219
    :cond_2
    const/4 v15, 0x1

    :cond_3
    add-int v2, p7, v13

    sub-int/2addr v2, v15

    aget v2, v4, v2

    add-int/2addr v2, v15

    .line 220
    .local v2, "x":I
    move v9, v15

    goto :goto_4

    .line 216
    .end local v2    # "x":I
    :cond_4
    const/4 v15, 0x1

    :goto_3
    add-int v2, p7, v13

    add-int/2addr v2, v15

    aget v2, v4, v2

    .line 217
    .restart local v2    # "x":I
    const/4 v9, 0x0

    .line 220
    .local v9, "removal":Z
    :goto_4
    nop

    .line 223
    sub-int v16, v2, v13

    .local v16, "y":I
    :goto_5
    move/from16 v17, v16

    .line 225
    .end local v16    # "y":I
    .local v17, "y":I
    if-ge v2, v6, :cond_6

    move/from16 v3, v17

    if-ge v3, v7, :cond_5

    .end local v17    # "y":I
    .local v3, "y":I
    move/from16 v18, v6

    add-int v6, p1, v2

    .end local v6    # "oldSize":I
    .local v18, "oldSize":I
    move/from16 v19, v7

    add-int v7, p3, v3

    .line 226
    .end local v7    # "newSize":I
    .local v19, "newSize":I
    invoke-virtual {v0, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 228
    add-int/lit8 v16, v3, 0x1

    .line 223
    .end local v3    # "y":I
    .restart local v16    # "y":I
    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_5

    .line 230
    .end local v16    # "y":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v3    # "y":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_5
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    goto :goto_6

    .end local v3    # "y":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    .restart local v17    # "y":I
    :cond_6
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v3, v17

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .end local v17    # "y":I
    .restart local v3    # "y":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :cond_7
    :goto_6
    add-int v6, p7, v13

    aput v2, v4, v6

    .line 231
    if-eqz v11, :cond_8

    sub-int v6, v8, v12

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-lt v13, v6, :cond_8

    add-int v6, v8, v12

    sub-int/2addr v6, v7

    if-gt v13, v6, :cond_8

    .line 232
    add-int v6, p7, v13

    aget v6, v4, v6

    add-int v7, p7, v13

    aget v7, v5, v7

    if-lt v6, v7, :cond_8

    .line 233
    new-instance v6, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 234
    .local v6, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v13

    aget v7, v5, v7

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 235
    iget v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v13

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 236
    add-int v7, p7, v13

    aget v7, v4, v7

    add-int v15, p7, v13

    aget v15, v5, v15

    sub-int/2addr v7, v15

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 237
    iput-boolean v9, v6, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 238
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 239
    return-object v6

    .line 210
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v6    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v9    # "removal":Z
    :cond_8
    const/4 v7, 0x0

    add-int/lit8 v13, v13, 0x2

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v9, 0x1

    goto/16 :goto_2

    .line 243
    .end local v13    # "k":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_9
    move/from16 v18, v6

    move/from16 v19, v7

    const/4 v7, 0x0

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    neg-int v2, v12

    .local v2, "k":I
    :goto_7
    if-gt v2, v12, :cond_f

    .line 245
    add-int v3, v2, v8

    .line 248
    .local v3, "backwardK":I
    add-int v6, v12, v8

    if-eq v3, v6, :cond_c

    neg-int v6, v12

    add-int/2addr v6, v8

    if-eq v3, v6, :cond_a

    add-int v6, p7, v3

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    aget v6, v5, v6

    add-int v9, p7, v3

    add-int/2addr v9, v15

    aget v9, v5, v9

    if-ge v6, v9, :cond_b

    goto :goto_8

    .line 253
    :cond_a
    const/4 v15, 0x1

    :cond_b
    add-int v6, p7, v3

    add-int/2addr v6, v15

    aget v6, v5, v6

    sub-int/2addr v6, v15

    .line 254
    .local v6, "x":I
    move v9, v15

    goto :goto_9

    .line 250
    .end local v6    # "x":I
    :cond_c
    const/4 v15, 0x1

    :goto_8
    add-int v6, p7, v3

    sub-int/2addr v6, v15

    aget v6, v5, v6

    .line 251
    .restart local v6    # "x":I
    const/4 v9, 0x0

    .line 254
    .restart local v9    # "removal":Z
    :goto_9
    nop

    .line 258
    sub-int v13, v6, v3

    .line 260
    .local v13, "y":I
    :goto_a
    if-lez v6, :cond_d

    if-lez v13, :cond_d

    add-int v14, p1, v6

    const/4 v15, 0x1

    add-int/lit8 v7, v14, -0x1

    add-int v14, p3, v13

    add-int/lit8 v1, v14, -0x1

    .line 261
    invoke-virtual {v0, v7, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 262
    add-int/lit8 v6, v6, -0x1

    .line 263
    add-int/lit8 v13, v13, -0x1

    .line 258
    const/4 v7, 0x0

    goto :goto_a

    .line 265
    :cond_d
    add-int v1, p7, v3

    aput v6, v5, v1

    .line 266
    if-nez v11, :cond_e

    add-int v1, v2, v8

    neg-int v7, v12

    if-lt v1, v7, :cond_e

    add-int v1, v2, v8

    if-gt v1, v12, :cond_e

    .line 267
    add-int v1, p7, v3

    aget v1, v4, v1

    add-int v7, p7, v3

    aget v7, v5, v7

    if-lt v1, v7, :cond_e

    .line 268
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 269
    .local v1, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v3

    aget v7, v5, v7

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 270
    iget v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v3

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 271
    add-int v7, p7, v3

    aget v7, v4, v7

    add-int v14, p7, v3

    aget v14, v5, v14

    sub-int/2addr v7, v14

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 273
    iput-boolean v9, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 274
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 275
    return-object v1

    .line 243
    .end local v1    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v3    # "backwardK":I
    .end local v6    # "x":I
    .end local v9    # "removal":Z
    .end local v13    # "y":I
    :cond_e
    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x0

    goto/16 :goto_7

    .line 209
    .end local v2    # "k":I
    :cond_f
    const/4 v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move v9, v7

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 280
    .end local v12    # "d":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_10
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v8    # "delta":I
    .end local v10    # "dLimit":I
    .end local v11    # "checkInFwd":Z
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_11
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :goto_b
    const/4 v1, 0x0

    return-object v1
.end method
