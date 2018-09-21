.class public Landroidx/slice/widget/ListContent;
.super Ljava/lang/Object;
.source "ListContent.java"


# instance fields
.field private mColorItem:Landroidx/slice/SliceItem;

.field private mContext:Landroid/content/Context;

.field private mGridBottomPadding:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mLargeHeight:I

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mMinScrollHeight:I

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleSize:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 93
    iput-object p2, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    .line 94
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 108
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_1

    .line 109
    sget-object v1, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v0, p3, v1, p4, p5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 112
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mHeaderTitleSize:I

    .line 114
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mHeaderSubtitleSize:I

    .line 116
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mVerticalHeaderTextPadding:I

    .line 119
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mTitleSize:I

    .line 120
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mSubtitleSize:I

    .line 122
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mVerticalTextPadding:I

    .line 125
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mGridTitleSize:I

    .line 126
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/ListContent;->mGridSubtitleSize:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 130
    .local v2, "defaultVerticalGridPadding":I
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/ListContent;->mVerticalGridTextPadding:I

    .line 133
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    .line 134
    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v2    # "defaultVerticalGridPadding":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    goto :goto_0

    .line 137
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 142
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)Z

    .line 143
    return-void
.end method

.method private static findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 433
    const-string v0, "list_item"

    const-string v1, "shortcut"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string v4, "ttl"

    const-string v5, "last_updated"

    const-string v6, "horizontal"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "nonHints":[Ljava/lang/String;
    const-string v1, "slice"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 436
    .local v1, "header":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    return-object v1

    .line 439
    :cond_0
    return-object v2
.end method

.method private getHeight(Landroidx/slice/SliceItem;ZIII)I
    .locals 5
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "count"    # I
    .param p5, "mode"    # I

    .line 298
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 301
    :cond_0
    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 302
    new-instance v0, Landroidx/slice/widget/GridContent;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 303
    .local v0, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    iget v3, p0, Landroidx/slice/widget/ListContent;->mGridTopPadding:I

    goto :goto_0

    :cond_1
    move v3, v1

    .line 304
    .local v3, "topPadding":I
    :goto_0
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, p4, -0x1

    if-ne p3, v4, :cond_2

    iget v1, p0, Landroidx/slice/widget/ListContent;->mGridBottomPadding:I

    nop

    .line 305
    .local v1, "bottomPadding":I
    :cond_2
    if-ne p5, v2, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getSmallHeight()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getActualHeight()I

    move-result v2

    .line 306
    .local v2, "height":I
    :goto_1
    add-int v4, v2, v3

    add-int/2addr v4, v1

    return v4

    .line 308
    .end local v0    # "gc":Landroidx/slice/widget/GridContent;
    .end local v1    # "bottomPadding":I
    .end local v2    # "height":I
    .end local v3    # "topPadding":I
    :cond_4
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 309
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    if-ne p5, v2, :cond_5

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSmallHeight()I

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getActualHeight()I

    move-result v1

    :goto_2
    return v1

    .line 299
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_6
    :goto_3
    return v1
.end method

.method public static getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rowItem"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/slice/SliceItem;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    .line 380
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 381
    const-string v1, "horizontal"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    invoke-direct {v1, p0, p1, p2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 385
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 386
    .local v2, "actionItem":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    .line 387
    .local v3, "primaryAction":Landroidx/slice/core/SliceAction;
    if-eqz v2, :cond_1

    .line 388
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    move-object v3, v4

    .line 390
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 391
    const-string v0, "action"

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 394
    :cond_3
    const/4 v4, 0x3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 395
    return v4

    .line 396
    :cond_4
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 397
    move v5, v0

    .local v5, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 398
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceAction;

    invoke-interface {v6}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 399
    return v4

    .line 397
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 402
    .end local v5    # "i":I
    :cond_6
    return v0

    .line 404
    :cond_7
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    move v0, v4

    nop

    :cond_8
    return v0

    .line 410
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    .end local v2    # "actionItem":Landroidx/slice/SliceItem;
    .end local v3    # "primaryAction":Landroidx/slice/core/SliceAction;
    :cond_9
    return v0
.end method

.method private static getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .locals 5
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 444
    const-string v0, "see_more"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 446
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 447
    const-string v2, "slice"

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 449
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    return-object v2

    .line 452
    :cond_0
    return-object v0

    .line 455
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_1
    return-object v1
.end method

.method public static isValidHeader(Landroidx/slice/SliceItem;)Z
    .locals 5
    .param p0, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 462
    const-string v0, "slice"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "list_item"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string v4, "see_more"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    const-string v0, "text"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v0, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 466
    .local v0, "item":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 468
    .end local v0    # "item":Landroidx/slice/SliceItem;
    :cond_1
    return v1
.end method

.method private populate(Landroidx/slice/Slice;)Z
    .locals 10
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 149
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 150
    :cond_0
    const-string v1, "int"

    const-string v2, "color"

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 151
    const-string v1, "int"

    const-string v2, "layout_direction"

    invoke-static {p1, v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 153
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    nop

    :cond_1
    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 161
    :cond_2
    invoke-static {p1}, Landroidx/slice/SliceMetadata;->getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 163
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 164
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 169
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    move v2, v0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 171
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    .line 172
    .local v3, "child":Landroidx/slice/SliceItem;
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "format":Ljava/lang/String;
    const-string v5, "actions"

    const-string v6, "see_more"

    const-string v7, "keywords"

    const-string v8, "ttl"

    const-string v9, "last_updated"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v5

    .line 175
    .local v5, "isNonRowContent":Z
    if-nez v5, :cond_6

    const-string v6, "action"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "slice"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 176
    :cond_4
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_5

    const-string v6, "list_item"

    invoke-virtual {v3, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 177
    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 178
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 179
    :cond_5
    const-string v6, "list_item"

    invoke-virtual {v3, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v3    # "child":Landroidx/slice/SliceItem;
    .end local v4    # "format":Ljava/lang/String;
    .end local v5    # "isNonRowContent":Z
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_8

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    .line 186
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 188
    :cond_8
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColorItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mColorItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getHeaderItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 337
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getHeaderTemplateType()I
    .locals 4

    .line 366
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result v0

    return v0
.end method

.method public getItemsForNonScrollingList(I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->hasHeader()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 265
    .local v1, "minItemCount":I
    :goto_0
    const/4 v3, 0x0

    .line 267
    .local v3, "visibleHeight":I
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 268
    new-instance v4, Landroidx/slice/widget/RowContent;

    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-direct {v4, v6, v7, v5}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 269
    .local v4, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getActualHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 271
    .end local v4    # "rc":Landroidx/slice/widget/RowContent;
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 272
    .local v4, "rowCount":I
    move v12, v3

    move v3, v5

    .local v3, "i":I
    .local v12, "visibleHeight":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 273
    iget-object v6, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/slice/SliceItem;

    if-nez v3, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v5

    :goto_2
    const/4 v11, 0x2

    move-object v6, p0

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v6

    .line 275
    .local v6, "itemHeight":I
    if-lez p1, :cond_4

    add-int v7, v12, v6

    if-le v7, p1, :cond_4

    .line 276
    goto :goto_3

    .line 278
    :cond_4
    add-int/2addr v12, v6

    .line 279
    iget-object v7, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v6    # "itemHeight":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v3    # "i":I
    :cond_5
    :goto_3
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_6

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 285
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 289
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_7
    return-object v0

    .line 262
    .end local v1    # "minItemCount":I
    .end local v4    # "rowCount":I
    .end local v12    # "visibleHeight":I
    :cond_8
    :goto_4
    return-object v0
.end method

.method public getLargeHeight(IZ)I
    .locals 5
    .param p1, "maxHeight"    # I
    .param p2, "scrollable"    # Z

    .line 205
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v0

    .line 206
    .local v0, "desiredHeight":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/slice/widget/ListContent;->mLargeHeight:I

    .line 210
    .local v2, "maxLargeHeight":I
    :goto_0
    sub-int v3, v0, v2

    iget v4, p0, Landroidx/slice/widget/ListContent;->mMinScrollHeight:I

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 213
    .local v3, "bigEnoughToScroll":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 215
    move v1, v2

    goto :goto_2

    .line 213
    :cond_2
    if-ne p1, v1, :cond_3

    .line 215
    move v1, v0

    goto :goto_2

    :cond_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 216
    .local v1, "height":I
    :goto_2
    if-nez p2, :cond_4

    .line 217
    invoke-virtual {p0, v1}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v1

    .line 219
    :cond_4
    return v1
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 327
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getListHeight(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)I"
        }
    .end annotation

    .line 229
    .local p1, "listItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 233
    .local v1, "height":I
    const/4 v2, 0x0

    .line 234
    .local v2, "hasRealHeader":Z
    const/4 v3, 0x0

    .line 235
    .local v3, "maybeHeader":Landroidx/slice/SliceItem;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 236
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroidx/slice/SliceItem;

    .line 237
    const-string v4, "list_item"

    const-string v6, "horizontal"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v5

    move v2, v4

    .line 239
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "horizontal"

    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 240
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v6, p0

    move-object v7, v3

    invoke-direct/range {v6 .. v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v0

    return v0

    .line 242
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 243
    .local v4, "rowCount":I
    move v12, v1

    move v1, v0

    .local v1, "i":I
    .local v12, "height":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/slice/SliceItem;

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    move v8, v5

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    const/4 v11, 0x2

    move-object v6, p0

    move v9, v1

    move v10, v4

    invoke-direct/range {v6 .. v11}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v6

    add-int/2addr v12, v6

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_4
    return v12

    .line 230
    .end local v2    # "hasRealHeader":Z
    .end local v3    # "maybeHeader":Landroidx/slice/SliceItem;
    .end local v4    # "rowCount":I
    .end local v12    # "height":I
    :cond_5
    :goto_2
    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 4

    .line 418
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Landroidx/slice/widget/GridContent;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v0, v1, v2}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 421
    .local v0, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v1

    return-object v1

    .line 423
    .end local v0    # "gc":Landroidx/slice/widget/GridContent;
    :cond_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 424
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    return-object v1

    .line 427
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 1

    .line 322
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSmallHeight()I
    .locals 6

    .line 195
    iget-object v1, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/SliceItem;ZIII)I

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 359
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-static {v0}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
