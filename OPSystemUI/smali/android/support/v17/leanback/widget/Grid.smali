.class abstract Landroid/support/v17/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Grid$Location;,
        Landroid/support/v17/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 134
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 139
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method

.method public static createGrid(I)Landroid/support/v17/leanback/widget/Grid;
    .locals 1
    .param p0, "rows"    # I

    .line 146
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 147
    new-instance v0, Landroid/support/v17/leanback/widget/SingleRow;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/SingleRow;-><init>()V

    .local v0, "grid":Landroid/support/v17/leanback/widget/Grid;
    goto :goto_0

    .line 150
    .end local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;-><init>()V

    .line 151
    .restart local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/Grid;->setNumRows(I)V

    .line 153
    :goto_0
    return-object v0
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    .line 450
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 453
    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    .line 389
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final appendVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    .line 398
    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .line 318
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 319
    return v1

    .line 321
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    .line 322
    :goto_0
    move v1, v3

    goto :goto_1

    .line 321
    :cond_1
    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, p1, v2

    if-lt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .line 329
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 330
    return v1

    .line 332
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, p1, v2

    if-lt v0, v2, :cond_1

    .line 333
    :goto_0
    move v1, v3

    goto :goto_1

    .line 332
    :cond_1
    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "fromLimit"    # I
    .param p2, "da"    # I
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 527
    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .locals 22
    .param p1, "positions"    # [I
    .param p2, "positionsLength"    # I
    .param p3, "positionToRow"    # Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 465
    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    .line 466
    .local v4, "lastPos":I
    const/4 v5, 0x0

    if-ltz v4, :cond_0

    .line 467
    invoke-static {v1, v5, v2, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    .line 468
    .local v6, "resultSearchLast":I
    :goto_0
    const/4 v7, 0x1

    if-gez v6, :cond_4

    .line 470
    neg-int v8, v6

    sub-int/2addr v8, v7

    .line 472
    .local v8, "firstDisappearingIndex":I
    iget-boolean v9, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_1

    .line 473
    iget-object v9, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v10, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v9, v10

    .local v9, "edge":I
    goto :goto_1

    .line 475
    .end local v9    # "edge":I
    :cond_1
    iget-object v9, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v10, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v9, v10

    .line 477
    .restart local v9    # "edge":I
    :goto_1
    move/from16 v16, v9

    move v9, v8

    .local v9, "i":I
    .local v16, "edge":I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 478
    aget v15, v1, v9

    .line 479
    .local v15, "disappearingIndex":I
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 480
    .local v10, "disappearingRow":I
    if-gez v10, :cond_2

    .line 481
    const/4 v10, 0x0

    .line 483
    .end local v10    # "disappearingRow":I
    .local v17, "disappearingRow":I
    :cond_2
    move/from16 v17, v10

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v10, v15, v7, v11, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v18

    .line 484
    .local v18, "size":I
    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v11, v11, v5

    move v12, v15

    move/from16 v13, v18

    move/from16 v14, v17

    move/from16 v19, v15

    move/from16 v15, v16

    .end local v15    # "disappearingIndex":I
    .local v19, "disappearingIndex":I
    invoke-interface/range {v10 .. v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 485
    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_3

    .line 486
    sub-int v10, v16, v18

    iget v11, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v10, v11

    .line 477
    .end local v17    # "disappearingRow":I
    .end local v18    # "size":I
    .end local v19    # "disappearingIndex":I
    :goto_3
    move/from16 v16, v10

    goto :goto_4

    .line 488
    .restart local v17    # "disappearingRow":I
    .restart local v18    # "size":I
    .restart local v19    # "disappearingIndex":I
    :cond_3
    add-int v10, v16, v18

    iget v11, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v10, v11

    .end local v16    # "edge":I
    .end local v17    # "disappearingRow":I
    .end local v18    # "size":I
    .end local v19    # "disappearingIndex":I
    .local v10, "edge":I
    goto :goto_3

    .line 477
    .end local v10    # "edge":I
    .restart local v16    # "edge":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 493
    .end local v8    # "firstDisappearingIndex":I
    .end local v9    # "i":I
    .end local v16    # "edge":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v8

    .line 494
    .local v8, "firstPos":I
    if-ltz v8, :cond_5

    .line 495
    invoke-static {v1, v5, v2, v8}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v9

    goto :goto_5

    :cond_5
    move v9, v5

    .line 496
    .local v9, "resultSearchFirst":I
    :goto_5
    if-gez v9, :cond_9

    .line 498
    neg-int v10, v9

    add-int/lit8 v10, v10, -0x2

    .line 500
    .local v10, "firstDisappearingIndex":I
    iget-boolean v11, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_6

    .line 501
    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11, v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v11

    .local v11, "edge":I
    goto :goto_6

    .line 503
    .end local v11    # "edge":I
    :cond_6
    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11, v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v11

    .line 505
    .restart local v11    # "edge":I
    :goto_6
    move v12, v11

    move v11, v10

    .local v11, "i":I
    .local v12, "edge":I
    :goto_7
    if-ltz v11, :cond_9

    .line 506
    aget v15, v1, v11

    .line 507
    .restart local v15    # "disappearingIndex":I
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 508
    .local v13, "disappearingRow":I
    if-gez v13, :cond_7

    .line 509
    const/4 v13, 0x0

    .line 511
    .end local v13    # "disappearingRow":I
    .local v19, "disappearingRow":I
    :cond_7
    move/from16 v19, v13

    iget-object v13, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v13, v15, v5, v14, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v20

    .line 512
    .local v20, "size":I
    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v13, :cond_8

    .line 513
    iget v13, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v13, v12

    add-int v13, v13, v20

    .line 517
    .end local v12    # "edge":I
    .local v13, "edge":I
    :goto_8
    move v12, v13

    goto :goto_9

    .line 515
    .end local v13    # "edge":I
    .restart local v12    # "edge":I
    :cond_8
    iget v13, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v13, v12, v13

    sub-int v13, v13, v20

    goto :goto_8

    .line 517
    :goto_9
    iget-object v13, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v14, v14, v5

    move/from16 v21, v15

    .end local v15    # "disappearingIndex":I
    .local v21, "disappearingIndex":I
    move/from16 v16, v20

    move/from16 v17, v19

    move/from16 v18, v12

    invoke-interface/range {v13 .. v18}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 505
    .end local v19    # "disappearingRow":I
    .end local v20    # "size":I
    .end local v21    # "disappearingIndex":I
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 520
    .end local v10    # "firstDisappearingIndex":I
    .end local v11    # "i":I
    .end local v12    # "edge":I
    :cond_9
    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I

    .line 304
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result v0

    return v0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I

    .line 289
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result v0

    return v0
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    .line 228
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;
    .locals 2

    .line 354
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .line 236
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 272
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v0

    .line 273
    .local v0, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v0, :cond_0

    .line 274
    const/4 v1, -0x1

    return v1

    .line 276
    :cond_0
    iget v1, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    return v1
.end method

.method public invalidateItemsAfter(I)V
    .locals 1
    .param p1, "index"    # I

    .line 253
    if-gez p1, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    .line 257
    return-void

    .line 259
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_2

    .line 260
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 262
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 263
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 266
    :cond_3
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    .line 363
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final prependVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    .line 372
    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 4
    .param p1, "aboveIndex"    # I
    .param p2, "toLimit"    # I

    .line 415
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-le v0, p1, :cond_3

    .line 416
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 417
    :goto_1
    move v1, v2

    goto :goto_2

    .line 416
    :cond_0
    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 417
    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-gt v0, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move v0, v1

    .line 418
    .local v0, "offEnd":Z
    if-eqz v0, :cond_3

    .line 419
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 420
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 424
    .end local v0    # "offEnd":Z
    goto :goto_0

    .line 425
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 426
    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 5
    .param p1, "belowIndex"    # I
    .param p2, "toLimit"    # I

    .line 434
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, p1, :cond_3

    .line 435
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    .line 436
    .local v0, "size":I
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 437
    invoke-interface {v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v1, p2, :cond_0

    .line 438
    :goto_1
    move v2, v3

    goto :goto_2

    .line 437
    :cond_0
    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 438
    invoke-interface {v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move v1, v2

    .line 439
    .local v1, "offFront":Z
    if-eqz v1, :cond_3

    .line 440
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 441
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 445
    .end local v0    # "size":I
    .end local v1    # "offFront":Z
    goto :goto_0

    .line 446
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 447
    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 244
    return-void
.end method

.method setNumRows(I)V
    .locals 3
    .param p1, "numRows"    # I

    .line 210
    if-lez p1, :cond_2

    .line 213
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ne v0, p1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    .line 217
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    new-array v0, v0, [Landroid/support/v4/util/CircularIntArray;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    new-instance v2, Landroid/support/v4/util/CircularIntArray;

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;-><init>()V

    aput-object v2, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 211
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 183
    iput-object p1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 184
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .line 167
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    .line 168
    return-void
.end method

.method public final setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .line 160
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    .line 161
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .line 192
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    .line 193
    return-void
.end method
