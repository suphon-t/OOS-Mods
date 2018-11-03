.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TEXT_LAYOUT:I

.field private static final TITLE_TEXT_LAYOUT:I


# instance fields
.field private mGridContent:Landroidx/slice/widget/GridContent;

.field private mGutter:I

.field private mIconSize:I

.field private mLargeImageHeight:I

.field private mMaxCellUpdateScheduled:Z

.field private mMaxCells:I

.field private mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRowCount:I

.field private mRowIndex:I

.field private mSmallImageMinWidth:I

.field private mSmallImageSize:I

.field private mTextPadding:I

.field private mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_title:I

    sput v0, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    .line 70
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_secondary_text:I

    sput v0, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 493
    new-instance v1, Landroidx/slice/widget/GridRowView$1;

    invoke-direct {v1, p0}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 101
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    .line 103
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/slice/widget/GridRowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 107
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 108
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 109
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_min_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 110
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_gutter:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 111
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_padding:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 112
    return-void
.end method

.method static synthetic access$002(Landroidx/slice/widget/GridRowView;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/GridRowView;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    return p1
.end method

.method static synthetic access$100(Landroidx/slice/widget/GridRowView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/GridRowView;

    .line 65
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/slice/widget/GridRowView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/GridRowView;

    .line 65
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    return-void
.end method

.method static synthetic access$302(Landroidx/slice/widget/GridRowView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/GridRowView;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    return p1
.end method

.method private addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 23
    .param p1, "cell"    # Landroidx/slice/widget/GridContent$CellContent;
    .param p2, "index"    # I
    .param p3, "total"    # I

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 313
    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v11, v0

    .line 316
    .local v11, "maxCellText":I
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 317
    .local v12, "cellContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 318
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getCellItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 321
    .local v13, "cellItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v14

    .line 323
    .local v14, "contentIntentItem":Landroidx/slice/SliceItem;
    const/4 v0, 0x0

    .line 324
    .local v0, "textCount":I
    const/4 v1, 0x0

    .line 325
    .local v1, "imageCount":I
    const/4 v2, 0x0

    .line 326
    .local v2, "added":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v10, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v16, v3

    .line 327
    .local v16, "isSingleItem":Z
    const/4 v3, 0x0

    .line 329
    .local v3, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-nez v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 332
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 333
    .local v5, "cellItem":Landroidx/slice/SliceItem;
    const-string/jumbo v9, "text"

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 334
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v5    # "cellItem":Landroidx/slice/SliceItem;
    :cond_2
    goto :goto_2

    .line 338
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 339
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/slice/SliceItem;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_5

    .line 340
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 341
    .local v5, "item":Landroidx/slice/SliceItem;
    const-string/jumbo v9, "title"

    const-string v15, "large"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 344
    .end local v5    # "item":Landroidx/slice/SliceItem;
    :cond_4
    goto :goto_3

    .line 346
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/slice/SliceItem;>;"
    :cond_5
    move-object v9, v3

    .line 346
    .end local v3    # "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .local v9, "textItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v3, 0x0

    .line 347
    .local v3, "prevItem":Landroidx/slice/SliceItem;
    move v5, v0

    move v4, v1

    move/from16 v17, v2

    move-object v15, v3

    const/4 v0, 0x0

    .line 347
    .end local v1    # "imageCount":I
    .end local v2    # "added":Z
    .end local v3    # "prevItem":Landroidx/slice/SliceItem;
    .local v0, "i":I
    .local v4, "imageCount":I
    .local v5, "textCount":I
    .local v15, "prevItem":Landroidx/slice/SliceItem;
    .local v17, "added":Z
    :goto_4
    move v3, v0

    .line 347
    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 348
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/slice/SliceItem;

    .line 349
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "itemFormat":Ljava/lang/String;
    invoke-direct {v6, v15}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v18

    .line 351
    .local v18, "padding":I
    if-ge v5, v11, :cond_9

    const-string/jumbo v0, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "long"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    .line 361
    :cond_6
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v19, v3

    move v10, v4

    move/from16 v22, v5

    goto :goto_6

    .line 353
    :cond_7
    :goto_5
    if-eqz v9, :cond_8

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 354
    nop

    .line 347
    move/from16 v19, v3

    move v10, v4

    move/from16 v22, v5

    goto/16 :goto_7

    .line 356
    :cond_8
    iget v0, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    move/from16 v19, v0

    move-object v0, v6

    move-object/from16 v20, v1

    move-object v1, v2

    .line 356
    .end local v1    # "itemFormat":Ljava/lang/String;
    .local v20, "itemFormat":Ljava/lang/String;
    move-object/from16 v21, v2

    move/from16 v2, v19

    .line 356
    .end local v2    # "item":Landroidx/slice/SliceItem;
    .local v21, "item":Landroidx/slice/SliceItem;
    move/from16 v19, v3

    move-object v3, v12

    .line 356
    .end local v3    # "i":I
    .local v19, "i":I
    move v10, v4

    move/from16 v4, v18

    .line 356
    .end local v4    # "imageCount":I
    .local v10, "imageCount":I
    move/from16 v22, v5

    move/from16 v5, v16

    .line 356
    .end local v5    # "textCount":I
    .local v22, "textCount":I
    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 357
    move-object/from16 v0, v21

    .line 358
    .end local v15    # "prevItem":Landroidx/slice/SliceItem;
    .local v0, "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v5, v22, 0x1

    .line 359
    .end local v22    # "textCount":I
    .restart local v5    # "textCount":I
    const/4 v1, 0x1

    .line 347
    .end local v17    # "added":Z
    .local v1, "added":Z
    move-object v15, v0

    move/from16 v17, v1

    move v4, v10

    goto :goto_9

    .line 361
    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v10    # "imageCount":I
    .end local v19    # "i":I
    .end local v20    # "itemFormat":Ljava/lang/String;
    .end local v21    # "item":Landroidx/slice/SliceItem;
    .local v1, "itemFormat":Ljava/lang/String;
    .restart local v2    # "item":Landroidx/slice/SliceItem;
    .restart local v3    # "i":I
    .restart local v4    # "imageCount":I
    .restart local v15    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v17    # "added":Z
    :cond_9
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v19, v3

    move v10, v4

    move/from16 v22, v5

    .line 361
    .end local v1    # "itemFormat":Ljava/lang/String;
    .end local v2    # "item":Landroidx/slice/SliceItem;
    .end local v3    # "i":I
    .end local v4    # "imageCount":I
    .end local v5    # "textCount":I
    .restart local v10    # "imageCount":I
    .restart local v19    # "i":I
    .restart local v20    # "itemFormat":Ljava/lang/String;
    .restart local v21    # "item":Landroidx/slice/SliceItem;
    .restart local v22    # "textCount":I
    :goto_6
    const/4 v0, 0x1

    if-ge v10, v0, :cond_a

    const-string v0, "image"

    move-object/from16 v5, v21

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 361
    .end local v21    # "item":Landroidx/slice/SliceItem;
    .local v5, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    iget v2, v6, Landroidx/slice/widget/GridRowView;->mTintColor:I

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v3, v12

    move-object/from16 v21, v5

    move/from16 v5, v16

    .line 362
    .end local v5    # "item":Landroidx/slice/SliceItem;
    .restart local v21    # "item":Landroidx/slice/SliceItem;
    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 363
    move-object/from16 v0, v21

    .line 364
    .end local v15    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v0    # "prevItem":Landroidx/slice/SliceItem;
    add-int/lit8 v4, v10, 0x1

    .line 365
    .end local v10    # "imageCount":I
    .restart local v4    # "imageCount":I
    const/4 v1, 0x1

    .line 347
    .end local v17    # "added":Z
    .end local v18    # "padding":I
    .end local v20    # "itemFormat":Ljava/lang/String;
    .end local v21    # "item":Landroidx/slice/SliceItem;
    .local v1, "added":Z
    move-object v15, v0

    move/from16 v17, v1

    goto :goto_8

    .line 347
    .end local v0    # "prevItem":Landroidx/slice/SliceItem;
    .end local v1    # "added":Z
    .end local v4    # "imageCount":I
    .restart local v10    # "imageCount":I
    .restart local v15    # "prevItem":Landroidx/slice/SliceItem;
    .restart local v17    # "added":Z
    :cond_a
    :goto_7
    move v4, v10

    .line 347
    .end local v10    # "imageCount":I
    .end local v22    # "textCount":I
    .restart local v4    # "imageCount":I
    .local v5, "textCount":I
    :goto_8
    move/from16 v5, v22

    :goto_9
    add-int/lit8 v0, v19, 0x1

    .line 347
    .end local v19    # "i":I
    .local v0, "i":I
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 369
    .end local v0    # "i":I
    :cond_b
    move v10, v4

    move/from16 v22, v5

    .line 369
    .end local v4    # "imageCount":I
    .end local v5    # "textCount":I
    .restart local v10    # "imageCount":I
    .restart local v22    # "textCount":I
    if-eqz v17, :cond_e

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 371
    .local v0, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_c

    .line 372
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    :cond_c
    iget-object v1, v6, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    add-int/lit8 v1, v8, -0x1

    if-eq v7, v1, :cond_d

    .line 378
    nop

    .line 379
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v6, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 381
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d
    if-eqz v14, :cond_e

    .line 384
    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v2

    iget v3, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 386
    .local v1, "info":Landroidx/slice/widget/EventInfo;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 387
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v14, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .local v2, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 389
    invoke-direct {v6, v12, v4}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 392
    .end local v0    # "contentDescr":Ljava/lang/CharSequence;
    .end local v1    # "info":Landroidx/slice/widget/EventInfo;
    .end local v2    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    :cond_e
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z
    .locals 9
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "color"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "padding"    # I
    .param p5, "isSingle"    # Z

    .line 406
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, "addedView":Landroid/view/View;
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_6

    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 421
    :cond_0
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 422
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    const-string v5, "large"

    invoke-virtual {p1, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    .line 426
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    if-eqz p5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    iget v5, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 428
    .local v5, "height":I
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .end local v5    # "height":I
    move-object v5, v7

    .line 429
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    nop

    .line 433
    move-object v8, v5

    goto :goto_3

    .line 430
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const-string v5, "no_tint"

    invoke-virtual {p1, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 431
    .local v5, "isIcon":Z
    if-eqz v5, :cond_3

    iget v7, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    goto :goto_1

    :cond_3
    iget v7, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 432
    .local v7, "size":I
    :goto_1
    if-eqz v5, :cond_4

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    :cond_4
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 433
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 433
    .end local v5    # "isIcon":Z
    .end local v7    # "size":I
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    move-object v5, v8

    .line 435
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eq p2, v6, :cond_5

    const-string v6, "no_tint"

    invoke-virtual {p1, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 436
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 438
    :cond_5
    invoke-virtual {p3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    move-object v1, v2

    .line 439
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_a

    .line 409
    :cond_6
    :goto_4
    const-string v2, "large"

    const-string/jumbo v5, "title"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v2

    .line 410
    .local v2, "title":Z
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz v2, :cond_7

    sget v6, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    goto :goto_5

    :cond_7
    sget v6, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    :goto_5
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 412
    .local v5, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_8

    iget v6, p0, Landroidx/slice/widget/GridRowView;->mGridTitleSize:I

    :goto_6
    int-to-float v6, v6

    goto :goto_7

    :cond_8
    iget v6, p0, Landroidx/slice/widget/GridRowView;->mGridSubtitleSize:I

    goto :goto_6

    :goto_7
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    if-eqz v2, :cond_9

    iget v6, p0, Landroidx/slice/widget/GridRowView;->mTitleColor:I

    goto :goto_8

    :cond_9
    iget v6, p0, Landroidx/slice/widget/GridRowView;->mSubtitleColor:I

    :goto_8
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    const-string v6, "long"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 415
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/slice/widget/SliceViewUtil;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_9

    .line 416
    :cond_a
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 417
    .local v6, "text":Ljava/lang/CharSequence;
    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 419
    invoke-virtual {v5, v4, p4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 420
    move-object v1, v5

    .line 421
    .end local v2    # "title":Z
    .end local v5    # "tv":Landroid/widget/TextView;
    .end local v6    # "text":Ljava/lang/CharSequence;
    nop

    .line 441
    :cond_b
    :goto_a
    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    move v3, v4

    :goto_b
    return v3
.end method

.method private addSeeMoreCount(I)V
    .locals 13
    .param p1, "numExtra"    # I

    .line 264
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "last":Landroid/view/View;
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 267
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 268
    .local v1, "seeMoreItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 269
    .local v3, "index":I
    iget v4, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 270
    .local v4, "total":I
    const-string v5, "slice"

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "action"

    .line 271
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    :cond_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 274
    new-instance v2, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v2, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v2, v3, v4}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 275
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 282
    .local v5, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v6}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 283
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more_overlay:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 285
    .local v6, "seeMoreView":Landroid/view/ViewGroup;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 286
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, "extraText":Landroid/widget/TextView;
    goto :goto_0

    .line 288
    .end local v6    # "seeMoreView":Landroid/view/ViewGroup;
    .end local v9    # "extraText":Landroid/widget/TextView;
    :cond_2
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 290
    .restart local v6    # "seeMoreView":Landroid/view/ViewGroup;
    sget v9, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 293
    .restart local v9    # "extraText":Landroid/widget/TextView;
    sget v10, Landroidx/slice/view/R$id;->text_see_more:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 294
    .local v10, "moreText":Landroid/widget/TextView;
    iget v11, p0, Landroidx/slice/widget/GridRowView;->mGridTitleSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 295
    iget v11, p0, Landroidx/slice/widget/GridRowView;->mTitleColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    .end local v10    # "moreText":Landroid/widget/TextView;
    :goto_0
    iget-object v10, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Landroidx/slice/view/R$string;->abc_slice_more_content:I

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v7, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v8

    const/4 v10, 0x4

    iget v11, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v7, v8, v10, v2, v11}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 303
    .local v7, "info":Landroidx/slice/widget/EventInfo;
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3, v4}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 304
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    .local v8, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 306
    invoke-direct {p0, v6, v2}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 307
    return-void
.end method

.method private determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3
    .param p1, "prevItem"    # Landroidx/slice/SliceItem;

    .line 445
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 447
    return v0

    .line 448
    :cond_0
    const-string v1, "image"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    return v0

    .line 450
    :cond_1
    const-string/jumbo v1, "text"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "long"

    .line 451
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 454
    :cond_2
    return v0

    .line 452
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mVerticalGridTextPadding:I

    return v0
.end method

.method private getExtraBottomPadding()I
    .locals 3

    .line 142
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 144
    :cond_0
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mGridBottomPadding:I

    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getExtraTopPadding()I
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v0, :cond_0

    .line 135
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mGridTopPadding:I

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxCells()I
    .locals 4

    .line 207
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 212
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 215
    .local v1, "desiredCellWidth":I
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v2

    iget v3, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v3, v1

    div-int/2addr v2, v3

    return v2

    .line 217
    .end local v1    # "desiredCellWidth":I
    :cond_2
    return v2

    .line 208
    .end local v0    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    :cond_3
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private makeClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 458
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    if-eqz p2, :cond_1

    .line 460
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    .line 459
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 463
    return-void
.end method

.method private populateViews()V
    .locals 7

    .line 222
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 226
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 232
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 233
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 235
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .local v2, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v1}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 239
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    .end local v2    # "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    .local v0, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    .line 241
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    :cond_4
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v2}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 245
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 247
    :cond_5
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 249
    :goto_0
    iget v3, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 250
    .local v3, "maxCells":I
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v4}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v1, v5

    .line 251
    .local v1, "hasSeeMore":Z
    :goto_1
    nop

    .local v5, "i":I
    :goto_2
    move v4, v5

    .end local v5    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 252
    iget-object v5, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v5, v3, :cond_7

    .line 253
    if-eqz v1, :cond_8

    .line 254
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {p0, v5}, Landroidx/slice/widget/GridRowView;->addSeeMoreCount(I)V

    goto :goto_3

    .line 258
    :cond_7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    .line 251
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 260
    .end local v5    # "i":I
    :cond_8
    :goto_3
    return-void

    .line 223
    .end local v0    # "contentDescr":Ljava/lang/CharSequence;
    .end local v1    # "hasSeeMore":Z
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/widget/GridContent$CellContent;>;"
    .end local v3    # "maxCells":I
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 224
    return-void
.end method

.method private scheduleMaxCellsUpdate()Z
    .locals 3

    .line 192
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 198
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    return v1

    .line 201
    :cond_1
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 202
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getActualHeight()I
    .locals 2

    .line 125
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getActualHeight()I

    move-result v0

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSmallHeight()I
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getSmallHeight()I

    move-result v0

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 468
    .local v0, "tagItem":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroidx/slice/SliceItem;

    .line 469
    .local v1, "actionItem":Landroidx/slice/SliceItem;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/slice/widget/EventInfo;

    .line 470
    .local v2, "info":Landroidx/slice/widget/EventInfo;
    if-eqz v1, :cond_1

    const-string v3, "action"

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 473
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v2, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    goto :goto_0

    .line 476
    :catch_0
    move-exception v3

    .line 477
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "GridView"

    const-string v5, "PendingIntent for slice cannot be sent"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 152
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getActualHeight()I

    move-result v0

    .line 153
    .local v0, "height":I
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 154
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 156
    return-void
.end method

.method public resetView()V
    .locals 3

    .line 484
    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 485
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 486
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 488
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 489
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/GridRowView;->setLayoutDirection(I)V

    .line 490
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    .line 491
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 4
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 174
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 175
    invoke-virtual {p0, p5}, Landroidx/slice/widget/GridRowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 176
    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 177
    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 178
    new-instance v0, Landroidx/slice/widget/GridContent;

    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 180
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 183
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 160
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 161
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 164
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 166
    :cond_0
    return-void
.end method
