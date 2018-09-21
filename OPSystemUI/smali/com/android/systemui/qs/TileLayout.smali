.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "TileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# instance fields
.field protected mCellHeight:I

.field protected mCellMarginHorizontal:I

.field private mCellMarginTop:I

.field protected mCellMarginVertical:I

.field protected mCellWidth:I

.field protected mColumns:I

.field private mListening:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setFocusableInTouchMode(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 40
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .line 124
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 3
    .param p1, "column"    # I

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .locals 2
    .param p1, "row"    # I

    .line 151
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 59
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTop()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v0, p0

    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/qs/TileLayout;->getWidth()I

    move-result v1

    .line 130
    .local v1, "w":I
    invoke-virtual {v0}, Lcom/android/systemui/qs/TileLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 131
    .local v2, "isRtl":Z
    :goto_0
    const/4 v5, 0x0

    .line 132
    .local v5, "row":I
    const/4 v6, 0x0

    .line 135
    .local v6, "column":I
    nop

    .local v3, "i":I
    :goto_1
    iget-object v7, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 137
    iget v7, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v6, v7, :cond_1

    .line 138
    const/4 v6, 0x0

    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 142
    :cond_1
    iget-object v7, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 143
    .local v7, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    invoke-direct {v0, v5}, Lcom/android/systemui/qs/TileLayout;->getRowTop(I)I

    move-result v8

    .line 144
    .local v8, "top":I
    if-eqz v2, :cond_2

    iget v9, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v9, v6

    sub-int/2addr v9, v4

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    invoke-direct {v0, v9}, Lcom/android/systemui/qs/TileLayout;->getColumnStart(I)I

    move-result v9

    .line 145
    .local v9, "left":I
    iget v10, v0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    add-int/2addr v10, v9

    .line 146
    .local v10, "right":I
    iget-object v11, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v12, v7, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v11, v9, v8, v10, v12}, Lcom/android/systemui/plugins/qs/QSTileView;->layout(IIII)V

    .line 135
    .end local v7    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v8    # "top":I
    .end local v9    # "left":I
    .end local v10    # "right":I
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 148
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 96
    .local v0, "numTiles":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 98
    .local v1, "width":I
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int/2addr v2, v3

    .line 99
    .local v2, "numRows":I
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 102
    move-object v3, p0

    .line 103
    .local v3, "previousView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 104
    .local v5, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v6, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 105
    .restart local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v6, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v7}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v8}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/plugins/qs/QSTileView;->measure(II)V

    .line 106
    iget-object v6, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 107
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 111
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    .line 112
    if-eqz v2, :cond_2

    iget v5, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    .line 113
    .local v4, "height":I
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 115
    :cond_3
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/qs/TileLayout;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 71
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 72
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 75
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 66
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->removeView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 50
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 52
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 53
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 80
    .local v1, "columns":I
    iget-object v3, p0, Lcom/android/systemui/qs/TileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070571

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 81
    const v3, 0x7f070575

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 82
    const v3, 0x7f070578

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 83
    const v3, 0x7f070577

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginTop:I

    .line 84
    const v3, 0x7f070573

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 85
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v3, v1, :cond_0

    .line 86
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->requestLayout()V

    .line 88
    return v2

    .line 90
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
