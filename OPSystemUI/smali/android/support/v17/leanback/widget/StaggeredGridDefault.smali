.class final Landroid/support/v17/leanback/widget/StaggeredGridDefault;
.super Landroid/support/v17/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .locals 4
    .param p1, "append"    # Z

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "wrapped":Z
    if-eqz p1, :cond_2

    .line 205
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    .local v1, "index":I
    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v2, :cond_5

    .line 206
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 207
    .local v2, "row":I
    if-nez v2, :cond_0

    .line 208
    const/4 v0, 0x1

    goto :goto_1

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 210
    return v1

    .line 205
    .end local v2    # "row":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 214
    .end local v1    # "index":I
    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    .restart local v1    # "index":I
    :goto_2
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v2, :cond_5

    .line 215
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 216
    .restart local v2    # "row":I
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 217
    const/4 v0, 0x1

    goto :goto_3

    .line 218
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 219
    return v1

    .line 214
    .end local v2    # "row":I
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    .end local v1    # "index":I
    :cond_5
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 15
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    move-object v0, p0

    .line 228
    iget-object v1, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    .line 233
    .local v1, "count":I
    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v2, :cond_9

    .line 234
    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 236
    return v5

    .line 238
    :cond_0
    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/2addr v2, v6

    .line 239
    .local v2, "itemIndex":I
    iget v7, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v7, v7, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 241
    .local v7, "rowIndex":I
    invoke-direct {v0, v6}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v8

    .line 242
    .local v8, "edgeLimitSearchIndex":I
    if-gez v8, :cond_3

    .line 245
    const/high16 v9, -0x80000000

    .line 246
    .local v9, "edgeLimit":I
    move v10, v9

    move v9, v5

    .local v9, "i":I
    .local v10, "edgeLimit":I
    :goto_0
    iget v11, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v9, v11, :cond_5

    .line 247
    iget-boolean v11, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    :goto_1
    move v10, v11

    .line 248
    if-eq v10, v3, :cond_2

    .line 249
    goto :goto_3

    .line 246
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 253
    .end local v9    # "i":I
    .end local v10    # "edgeLimit":I
    :cond_3
    iget-boolean v9, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_4

    invoke-virtual {v0, v5, v8, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v9

    .line 254
    .restart local v10    # "edgeLimit":I
    :goto_2
    move v10, v9

    goto :goto_3

    .line 253
    .end local v10    # "edgeLimit":I
    :cond_4
    nop

    .line 254
    invoke-virtual {v0, v6, v8, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v9

    goto :goto_2

    .restart local v10    # "edgeLimit":I
    :cond_5
    :goto_3
    move v9, v10

    .line 256
    .end local v10    # "edgeLimit":I
    .local v9, "edgeLimit":I
    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_6

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    if-gt v10, v9, :cond_8

    goto :goto_4

    .line 257
    :cond_6
    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    if-lt v10, v9, :cond_8

    .line 259
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 260
    iget v10, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v7, v10, :cond_8

    .line 262
    const/4 v7, 0x0

    .line 263
    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_7

    invoke-virtual {v0, v5, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v10

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v6, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v10

    :goto_5
    move v9, v10

    .line 266
    :cond_8
    const/4 v8, 0x1

    .line 267
    .local v8, "edgeLimitIsValid":Z
    goto :goto_8

    .line 268
    .end local v2    # "itemIndex":I
    .end local v7    # "rowIndex":I
    .end local v8    # "edgeLimitIsValid":Z
    .end local v9    # "edgeLimit":I
    :cond_9
    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_a

    iget v2, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_6

    :cond_a
    move v2, v5

    .line 270
    .restart local v2    # "itemIndex":I
    :goto_6
    iget-object v7, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v7}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v7, v7, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/2addr v7, v6

    goto :goto_7

    :cond_b
    move v7, v2

    :goto_7
    iget v8, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v7, v8

    .line 272
    .restart local v7    # "rowIndex":I
    const/4 v9, 0x0

    .line 273
    .restart local v9    # "edgeLimit":I
    move v8, v5

    .line 276
    .restart local v8    # "edgeLimitIsValid":Z
    :goto_8
    move v10, v8

    move v8, v2

    move v2, v5

    .line 281
    .local v2, "filledOne":Z
    .local v8, "itemIndex":I
    .local v10, "edgeLimitIsValid":Z
    :goto_9
    iget v11, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v11, :cond_1e

    .line 283
    if-eq v8, v1, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_c

    goto/16 :goto_18

    .line 286
    :cond_c
    iget-boolean v11, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_d

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    goto :goto_a

    :cond_d
    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    .line 287
    .local v11, "location":I
    :goto_a
    const v12, 0x7fffffff

    if-eq v11, v12, :cond_10

    if-ne v11, v3, :cond_e

    goto :goto_c

    .line 298
    :cond_e
    iget-boolean v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_f

    iget v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v12, v12

    goto :goto_b

    :cond_f
    iget v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_b
    add-int/2addr v11, v12

    goto :goto_10

    .line 289
    :cond_10
    :goto_c
    if-nez v7, :cond_13

    .line 290
    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_11

    iget v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v13, v6

    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v13

    goto :goto_d

    :cond_11
    iget v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v13, v6

    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v13

    :goto_d
    move v11, v13

    .line 291
    if-eq v11, v12, :cond_15

    if-eq v11, v3, :cond_15

    .line 292
    iget-boolean v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_12

    iget v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v12, v12

    goto :goto_e

    :cond_12
    iget v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_e
    add-int/2addr v11, v12

    goto :goto_10

    .line 295
    :cond_13
    iget-boolean v12, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_14

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v0, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v12

    goto :goto_f

    :cond_14
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v0, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v12

    :goto_f
    move v11, v12

    .line 300
    :cond_15
    :goto_10
    add-int/lit8 v12, v8, 0x1

    .local v12, "itemIndex":I
    invoke-virtual {v0, v8, v7, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v8

    .line 301
    .local v8, "size":I
    const/4 v2, 0x1

    .line 304
    if-eqz v10, :cond_1b

    .line 305
    :goto_11
    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_16

    sub-int v13, v11, v8

    if-le v13, v9, :cond_1a

    goto :goto_12

    :cond_16
    add-int v13, v11, v8

    if-ge v13, v9, :cond_1a

    .line 307
    :goto_12
    if-eq v12, v1, :cond_19

    if-nez p2, :cond_17

    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_14

    .line 310
    :cond_17
    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_18

    neg-int v13, v8

    iget v14, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v13, v14

    goto :goto_13

    :cond_18
    iget v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v13, v8

    :goto_13
    add-int/2addr v11, v13

    .line 311
    add-int/lit8 v13, v12, 0x1

    .local v13, "itemIndex":I
    invoke-virtual {v0, v12, v7, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v8

    .line 305
    .end local v12    # "itemIndex":I
    move v12, v13

    goto :goto_11

    .line 308
    .end local v13    # "itemIndex":I
    .restart local v12    # "itemIndex":I
    :cond_19
    :goto_14
    return v2

    .line 281
    .end local v11    # "location":I
    .end local v12    # "itemIndex":I
    .local v8, "itemIndex":I
    :cond_1a
    :goto_15
    move v8, v12

    goto :goto_17

    .line 314
    .local v8, "size":I
    .restart local v11    # "location":I
    .restart local v12    # "itemIndex":I
    :cond_1b
    const/4 v10, 0x1

    .line 315
    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_1c

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v13

    goto :goto_16

    :cond_1c
    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v13

    :goto_16
    move v8, v13

    .line 281
    .end local v9    # "edgeLimit":I
    .end local v11    # "location":I
    .local v8, "edgeLimit":I
    move v9, v8

    goto :goto_15

    .end local v12    # "itemIndex":I
    .local v8, "itemIndex":I
    .restart local v9    # "edgeLimit":I
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 284
    :cond_1d
    :goto_18
    return v2

    .line 318
    :cond_1e
    if-eqz p2, :cond_1f

    .line 319
    return v2

    .line 321
    :cond_1f
    iget-boolean v11, v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_20

    invoke-virtual {v0, v5, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v11

    goto :goto_19

    :cond_20
    invoke-virtual {v0, v6, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v11

    :goto_19
    move v9, v11

    .line 323
    const/4 v7, 0x0

    goto/16 :goto_9
.end method

.method public findRowMax(ZI[I)I
    .locals 9
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 106
    .local v0, "edge":I
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 107
    .local v1, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 108
    .local v2, "row":I
    move v3, p2

    .line 109
    .local v3, "index":I
    const/4 v4, 0x1

    .line 110
    .local v4, "visitedRows":I
    move v5, v2

    .line 111
    .local v5, "visitRow":I
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_2

    .line 112
    move v6, v0

    .line 113
    .local v6, "value":I
    add-int/lit8 v7, p2, 0x1

    .local v7, "i":I
    :goto_0
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v7, v8, :cond_5

    .line 114
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 115
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    .line 116
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_1

    .line 117
    iget v5, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    if-eqz p1, :cond_0

    if-le v0, v6, :cond_1

    goto :goto_1

    :cond_0
    if-ge v0, v6, :cond_1

    .line 120
    :goto_1
    move v2, v5

    .line 121
    move v6, v0

    .line 122
    move v3, v7

    .line 113
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 127
    .end local v6    # "value":I
    .end local v7    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v6, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v6

    add-int/2addr v6, v0

    .line 128
    .restart local v6    # "value":I
    add-int/lit8 v7, p2, -0x1

    .restart local v7    # "i":I
    :goto_2
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v7, v8, :cond_5

    .line 129
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v8

    .line 130
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 131
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    .line 132
    iget v5, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 134
    iget-object v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v8, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    add-int/2addr v8, v0

    .line 135
    .local v8, "newValue":I
    if-eqz p1, :cond_3

    if-le v8, v6, :cond_4

    goto :goto_3

    :cond_3
    if-ge v8, v6, :cond_4

    .line 136
    :goto_3
    move v2, v5

    .line 137
    move v6, v8

    .line 138
    move v3, v7

    .line 128
    .end local v8    # "newValue":I
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 143
    .end local v7    # "i":I
    :cond_5
    if-eqz p3, :cond_6

    .line 144
    const/4 v7, 0x0

    aput v2, p3, v7

    .line 145
    const/4 v7, 0x1

    aput v3, p3, v7

    .line 147
    :cond_6
    return v6
.end method

.method public findRowMin(ZI[I)I
    .locals 9
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 158
    .local v0, "edge":I
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 159
    .local v1, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v2, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 160
    .local v2, "row":I
    move v3, p2

    .line 161
    .local v3, "index":I
    const/4 v4, 0x1

    .line 162
    .local v4, "visitedRows":I
    move v5, v2

    .line 163
    .local v5, "visitRow":I
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v6, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v6

    sub-int v6, v0, v6

    .line 165
    .local v6, "value":I
    add-int/lit8 v7, p2, -0x1

    .local v7, "i":I
    :goto_0
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v7, v8, :cond_5

    .line 166
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v8

    .line 167
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 168
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_1

    .line 169
    iget v5, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 170
    add-int/lit8 v4, v4, 0x1

    .line 171
    iget-object v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v8, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    sub-int v8, v0, v8

    .line 172
    .local v8, "newValue":I
    if-eqz p1, :cond_0

    if-le v8, v6, :cond_1

    goto :goto_1

    :cond_0
    if-ge v8, v6, :cond_1

    .line 173
    :goto_1
    move v6, v8

    .line 174
    move v2, v5

    .line 175
    move v3, v7

    .line 165
    .end local v8    # "newValue":I
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 180
    .end local v6    # "value":I
    .end local v7    # "i":I
    :cond_2
    move v6, v0

    .line 181
    .restart local v6    # "value":I
    add-int/lit8 v7, p2, 0x1

    .restart local v7    # "i":I
    :goto_2
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v7, v8, :cond_5

    .line 182
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 183
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    .line 184
    iget v8, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    .line 185
    iget v5, v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 186
    add-int/lit8 v4, v4, 0x1

    .line 187
    if-eqz p1, :cond_3

    if-le v0, v6, :cond_4

    goto :goto_3

    :cond_3
    if-ge v0, v6, :cond_4

    .line 188
    :goto_3
    move v6, v0

    .line 189
    move v2, v5

    .line 190
    move v3, v7

    .line 181
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 195
    .end local v7    # "i":I
    :cond_5
    if-eqz p3, :cond_6

    .line 196
    const/4 v7, 0x0

    aput v2, p3, v7

    .line 197
    const/4 v7, 0x1

    aput v3, p3, v7

    .line 199
    :cond_6
    return v6
.end method

.method getRowMax(I)I
    .locals 5
    .param p1, "rowIndex"    # I

    .line 29
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    .line 30
    return v1

    .line 32
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 34
    .local v0, "edge":I
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_1

    .line 35
    return v0

    .line 37
    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 38
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 39
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 40
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    .line 41
    return v0

    .line 37
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_2
    goto :goto_0

    .line 44
    .end local v0    # "edge":I
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 45
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 46
    .restart local v0    # "edge":I
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 47
    .local v2, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    .line 48
    iget v1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v1, v0

    return v1

    .line 50
    :cond_5
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 51
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v4

    .line 52
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 53
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_6

    .line 54
    iget v1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v1, v0

    return v1

    .line 50
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 58
    .end local v0    # "edge":I
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v3    # "i":I
    :cond_7
    :goto_2
    return v1
.end method

.method getRowMin(I)I
    .locals 5
    .param p1, "rowIndex"    # I

    .line 66
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_0

    .line 67
    return v1

    .line 69
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 71
    .local v0, "edge":I
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 72
    .local v2, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    .line 73
    iget v1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v1, v0, v1

    return v1

    .line 75
    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 76
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v4

    .line 77
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    .line 78
    iget v4, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    .line 79
    iget v1, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v1, v0, v1

    return v1

    .line 75
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 82
    .end local v0    # "edge":I
    .end local v2    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 83
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    .line 84
    .restart local v0    # "edge":I
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_5

    .line 85
    return v0

    .line 87
    :cond_5
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    .local v2, "i":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_7

    .line 88
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 89
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    .line 90
    iget v4, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_6

    .line 91
    return v0

    .line 87
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_6
    goto :goto_1

    .line 95
    .end local v0    # "edge":I
    .end local v2    # "i":I
    :cond_7
    :goto_2
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 13
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .line 333
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_9

    .line 334
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_0

    .line 336
    return v3

    .line 338
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    sub-int/2addr v0, v4

    .line 339
    .local v0, "itemIndex":I
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 341
    .local v5, "rowIndex":I
    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    .line 342
    .local v6, "edgeLimitSearchIndex":I
    if-gez v6, :cond_3

    .line 345
    add-int/lit8 v5, v5, -0x1

    .line 346
    const v7, 0x7fffffff

    .line 347
    .local v7, "edgeLimit":I
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v8, v4

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 348
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    :goto_1
    move v7, v9

    .line 349
    if-eq v7, v1, :cond_2

    .line 350
    goto :goto_2

    .line 347
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 354
    .end local v7    # "edgeLimit":I
    .end local v8    # "i":I
    :cond_3
    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v4, v6, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {p0, v3, v6, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    .line 357
    .restart local v7    # "edgeLimit":I
    :cond_5
    :goto_2
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    if-lt v8, v7, :cond_8

    goto :goto_3

    .line 358
    :cond_6
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    if-gt v8, v7, :cond_8

    .line 360
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 361
    if-gez v5, :cond_8

    .line 363
    iget v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v5, v8, -0x1

    .line 364
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_7

    invoke-virtual {p0, v4, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v8

    goto :goto_4

    .line 365
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v8

    :goto_4
    move v7, v8

    .line 368
    :cond_8
    const/4 v6, 0x1

    .line 369
    .local v6, "edgeLimitIsValid":Z
    goto :goto_7

    .line 370
    .end local v0    # "itemIndex":I
    .end local v5    # "rowIndex":I
    .end local v6    # "edgeLimitIsValid":Z
    .end local v7    # "edgeLimit":I
    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_5

    :cond_a
    move v0, v3

    .line 372
    .restart local v0    # "itemIndex":I
    :goto_5
    iget-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v5}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    goto :goto_6

    :cond_b
    move v5, v0

    :goto_6
    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v5, v6

    .line 374
    .restart local v5    # "rowIndex":I
    const/4 v7, 0x0

    .line 375
    .restart local v7    # "edgeLimit":I
    move v6, v3

    .line 377
    .restart local v6    # "edgeLimitIsValid":Z
    :goto_7
    move v8, v6

    move v6, v0

    move v0, v3

    .line 382
    .local v0, "filledOne":Z
    .local v6, "itemIndex":I
    .local v8, "edgeLimitIsValid":Z
    :goto_8
    if-ltz v5, :cond_1e

    .line 384
    if-ltz v6, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_17

    .line 387
    :cond_c
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    goto :goto_9

    :cond_d
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    .line 388
    .local v9, "location":I
    :goto_9
    const/high16 v10, -0x80000000

    if-eq v9, v1, :cond_10

    if-ne v9, v10, :cond_e

    goto :goto_b

    .line 399
    :cond_e
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_f

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_a

    :cond_f
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    :goto_a
    add-int/2addr v9, v10

    goto :goto_f

    .line 390
    :cond_10
    :goto_b
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v11, v4

    if-ne v5, v11, :cond_13

    .line 391
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_11

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    goto :goto_c

    :cond_11
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    :goto_c
    move v9, v11

    .line 392
    if-eq v9, v1, :cond_15

    if-eq v9, v10, :cond_15

    .line 393
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_d

    :cond_12
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    :goto_d
    add-int/2addr v9, v10

    goto :goto_f

    .line 396
    :cond_13
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_14

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    goto :goto_e

    :cond_14
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    :goto_e
    move v9, v10

    .line 401
    :cond_15
    :goto_f
    add-int/lit8 v10, v6, -0x1

    .local v10, "itemIndex":I
    invoke-virtual {p0, v6, v5, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v6

    .line 402
    .local v6, "size":I
    const/4 v0, 0x1

    .line 406
    if-eqz v8, :cond_1b

    .line 407
    :goto_10
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16

    add-int v11, v9, v6

    if-ge v11, v7, :cond_1a

    goto :goto_11

    :cond_16
    sub-int v11, v9, v6

    if-le v11, v7, :cond_1a

    .line 409
    :goto_11
    if-ltz v10, :cond_19

    if-nez p2, :cond_17

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_13

    .line 412
    :cond_17
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_18

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v11, v6

    goto :goto_12

    :cond_18
    neg-int v11, v6

    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v11, v12

    :goto_12
    add-int/2addr v9, v11

    .line 413
    add-int/lit8 v11, v10, -0x1

    .local v11, "itemIndex":I
    invoke-virtual {p0, v10, v5, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v6

    .line 407
    .end local v10    # "itemIndex":I
    move v10, v11

    goto :goto_10

    .line 410
    .end local v11    # "itemIndex":I
    .restart local v10    # "itemIndex":I
    :cond_19
    :goto_13
    return v0

    .line 382
    .end local v9    # "location":I
    .end local v10    # "itemIndex":I
    .local v6, "itemIndex":I
    :cond_1a
    :goto_14
    move v6, v10

    goto :goto_16

    .line 416
    .local v6, "size":I
    .restart local v9    # "location":I
    .restart local v10    # "itemIndex":I
    :cond_1b
    const/4 v8, 0x1

    .line 417
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1c

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    goto :goto_15

    :cond_1c
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    :goto_15
    move v6, v11

    .line 382
    .end local v7    # "edgeLimit":I
    .end local v9    # "location":I
    .local v6, "edgeLimit":I
    move v7, v6

    goto :goto_14

    .end local v10    # "itemIndex":I
    .local v6, "itemIndex":I
    .restart local v7    # "edgeLimit":I
    :goto_16
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    .line 385
    :cond_1d
    :goto_17
    return v0

    .line 420
    :cond_1e
    if-eqz p2, :cond_1f

    .line 421
    return v0

    .line 423
    :cond_1f
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_20

    invoke-virtual {p0, v4, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v9

    goto :goto_18

    :cond_20
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v9

    :goto_18
    move v7, v9

    .line 425
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v5, v9, -0x1

    goto/16 :goto_8
.end method
