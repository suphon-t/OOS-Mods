.class Landroidx/car/widget/PagedListView$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DividerDecoration"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDividerEndId:I

.field private final mDividerEndMargin:I

.field private final mDividerHeight:I

.field private final mDividerStartId:I

.field private final mDividerStartMargin:I

.field private final mListDividerColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dividerStartMargin"    # I
    .param p3, "dividerEndMargin"    # I
    .param p4, "dividerStartId"    # I
    .param p5, "dividerEndId"    # I
    .param p6, "listDividerColor"    # I

    .line 1338
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1339
    iput-object p1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    .line 1340
    iput p2, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartMargin:I

    .line 1341
    iput p3, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndMargin:I

    .line 1342
    iput p4, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    .line 1343
    iput p5, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    .line 1344
    iput p6, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mListDividerColor:I

    .line 1346
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    .line 1347
    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1348
    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_list_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    .line 1350
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IIIIILandroidx/car/widget/PagedListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroidx/car/widget/PagedListView$1;

    .line 1315
    invoke-direct/range {p0 .. p6}, Landroidx/car/widget/PagedListView$DividerDecoration;-><init>(Landroid/content/Context;IIIII)V

    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "spacing"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1397
    iget v2, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    .line 1399
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 1402
    .local v2, "startChild":Landroid/view/View;
    :goto_0
    iget v4, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    if-eq v4, v3, :cond_1

    iget v3, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    .line 1404
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1407
    .local v3, "endChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    .line 1411
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1412
    .local v4, "containerRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1414
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1415
    .local v5, "startRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1417
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1418
    .local v6, "endRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1422
    .local v7, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndMargin:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 1428
    .local v8, "right":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    add-int v10, p3, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 1429
    .local v9, "bottom":I
    iget v10, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    sub-int v10, v9, v10

    .line 1431
    .local v10, "top":I
    int-to-float v12, v7

    int-to-float v13, v10

    int-to-float v14, v8

    int-to-float v11, v9

    iget-object v1, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    move v15, v11

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1432
    return-void

    .line 1408
    .end local v4    # "containerRect":Landroid/graphics/Rect;
    .end local v5    # "startRect":Landroid/graphics/Rect;
    .end local v6    # "endRect":Landroid/graphics/Rect;
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    .end local v10    # "top":I
    :cond_3
    :goto_2
    return-void
.end method

.method private hideDividerForAdapterPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1450
    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;

    invoke-interface {v0, p1}, Landroidx/car/widget/PagedListView$DividerVisibilityManager;->shouldHideDivider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1437
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1438
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 1439
    .local v0, "pos":I
    invoke-direct {p0, v0}, Landroidx/car/widget/PagedListView$DividerDecoration;->hideDividerForAdapterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1440
    return-void

    .line 1446
    :cond_0
    iget v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1447
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1364
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 1365
    .local v0, "usesGridLayoutManager":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1366
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1367
    .local v2, "container":Landroid/view/View;
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 1369
    .local v3, "itemPosition":I
    invoke-direct {p0, v3}, Landroidx/car/widget/PagedListView$DividerDecoration;->hideDividerForAdapterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1370
    goto :goto_2

    .line 1374
    :cond_0
    if-eqz v0, :cond_1

    .line 1376
    invoke-static {v1, p2}, Landroidx/car/widget/GridLayoutManagerUtils;->getLastIndexOnSameRow(ILandroid/support/v7/widget/RecyclerView;)I

    move-result v4

    .line 1377
    .local v4, "lastItem":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1378
    .local v4, "nextVerticalContainer":Landroid/view/View;
    goto :goto_1

    .line 1379
    .end local v4    # "nextVerticalContainer":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1381
    .restart local v4    # "nextVerticalContainer":Landroid/view/View;
    :goto_1
    if-nez v4, :cond_2

    .line 1384
    goto :goto_2

    .line 1386
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1387
    .local v5, "spacing":I
    invoke-direct {p0, p1, v2, v5}, Landroidx/car/widget/PagedListView$DividerDecoration;->drawDivider(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1365
    .end local v2    # "container":Landroid/view/View;
    .end local v3    # "itemPosition":I
    .end local v4    # "nextVerticalContainer":Landroid/view/View;
    .end local v5    # "spacing":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public updateDividerColor()V
    .locals 3

    .line 1354
    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    iget v2, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mListDividerColor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1355
    return-void
.end method
