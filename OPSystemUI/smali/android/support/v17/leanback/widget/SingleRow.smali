.class Landroid/support/v17/leanback/widget/SingleRow;
.super Landroid/support/v17/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private final mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 27
    new-instance v0, Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SingleRow;->setNumRows(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .locals 11
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .line 104
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    return v1

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 112
    .local v0, "filledOne":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v2

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 113
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-interface {v3, v2, v5, v4, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v9

    .line 115
    .local v9, "size":I
    iget v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v3, :cond_4

    iget v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v3, :cond_2

    goto :goto_2

    .line 119
    :cond_2
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int/2addr v3, v4

    .local v3, "edge":I
    goto :goto_1

    .line 122
    .end local v3    # "edge":I
    :cond_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int/2addr v3, v4

    .line 124
    .restart local v3    # "edge":I
    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    goto :goto_4

    .line 116
    .end local v3    # "edge":I
    :cond_4
    :goto_2
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_5

    const v3, 0x7fffffff

    goto :goto_3

    :cond_5
    const/high16 v3, -0x80000000

    .line 117
    .restart local v3    # "edge":I
    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 126
    .end local v3    # "edge":I
    .local v10, "edge":I
    :goto_4
    move v10, v3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v4, v1

    const/4 v7, 0x0

    move v5, v2

    move v6, v9

    move v8, v10

    invoke-interface/range {v3 .. v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 127
    const/4 v0, 0x1

    .line 128
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    goto :goto_5

    .line 112
    .end local v9    # "size":I
    .end local v10    # "edge":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "index":I
    :cond_7
    :goto_5
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4
    .param p1, "fromLimit"    # I
    .param p2, "da"    # I
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 140
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_3

    goto :goto_0

    :cond_0
    if-gez p2, :cond_3

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getFirstVisibleIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v0

    .line 147
    .local v0, "indexToPrefetch":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    neg-int v2, v2

    :goto_1
    add-int/2addr v1, v2

    .local v1, "nearestEdge":I
    goto :goto_3

    .line 151
    .end local v0    # "indexToPrefetch":I
    .end local v1    # "nearestEdge":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getLastVisibleIndex()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 152
    return-void

    .line 155
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v0

    .line 156
    .restart local v0    # "indexToPrefetch":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int/2addr v1, v2

    .line 157
    .local v1, "itemSizeWithSpace":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v3, :cond_5

    neg-int v3, v1

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    add-int v1, v2, v3

    .line 161
    .local v1, "nearestEdge":I
    :goto_3
    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 162
    .local v2, "distance":I
    invoke-interface {p3, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 163
    return-void
.end method

.method protected final findRowMax(ZI[I)I
    .locals 2
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .line 186
    if-eqz p3, :cond_0

    .line 187
    const/4 v0, 0x0

    aput v0, p3, v0

    .line 188
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 190
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 191
    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected final findRowMin(ZI[I)I
    .locals 2
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .line 176
    if-eqz p3, :cond_0

    .line 177
    const/4 v0, 0x0

    aput v0, p3, v0

    .line 178
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 180
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 181
    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 2
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->clear()V

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 1
    .param p1, "index"    # I

    .line 36
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    return-object v0
.end method

.method getStartIndexForAppend()I
    .locals 2

    .line 50
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_0

    .line 51
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 52
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getStartIndexForPrepend()I
    .locals 2

    .line 60
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    .line 61
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 62
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 63
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 65
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 12
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "filledOne":Z
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v2

    .line 79
    .local v2, "minIndex":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v3

    .local v3, "index":I
    :goto_0
    if-lt v3, v2, :cond_7

    .line 80
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, v3, v1, v5, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v10

    .line 82
    .local v10, "size":I
    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v4, :cond_4

    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v4, :cond_2

    goto :goto_2

    .line 86
    :cond_2
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_3

    .line 87
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int/2addr v4, v5

    add-int/2addr v4, v10

    .local v4, "edge":I
    goto :goto_1

    .line 89
    .end local v4    # "edge":I
    :cond_3
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v10

    .line 91
    .restart local v4    # "edge":I
    :goto_1
    iput v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    goto :goto_4

    .line 83
    .end local v4    # "edge":I
    :cond_4
    :goto_2
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_5

    const/high16 v4, -0x80000000

    goto :goto_3

    :cond_5
    const v4, 0x7fffffff

    .line 84
    .restart local v4    # "edge":I
    :goto_3
    iput v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v3, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 93
    .end local v4    # "edge":I
    .local v11, "edge":I
    :goto_4
    move v11, v4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v5, v1

    const/4 v8, 0x0

    move v6, v3

    move v7, v10

    move v9, v11

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 94
    const/4 v0, 0x1

    .line 95
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 96
    goto :goto_5

    .line 79
    .end local v10    # "size":I
    .end local v11    # "edge":I
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 99
    .end local v3    # "index":I
    :cond_7
    :goto_5
    return v0
.end method
