.class public Landroidx/slice/widget/GridContent$CellContent;
.super Ljava/lang/Object;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellContent"
.end annotation


# instance fields
.field private mCellItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mContentIntent:Landroidx/slice/SliceItem;

.field private mHasImage:Z

.field private mImageMode:I

.field private mTextCount:I

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 1
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 326
    invoke-virtual {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->populate(Landroidx/slice/SliceItem;)Z

    .line 327
    return-void
.end method

.method private isValidCellContent(Landroidx/slice/SliceItem;)Z
    .locals 6
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 406
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "format":Ljava/lang/String;
    const-string v1, "content_description"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "keywords"

    const-string v4, "ttl"

    const-string v5, "last_updated"

    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 409
    .local v1, "isNonCellContent":Z
    :goto_1
    if-nez v1, :cond_3

    const-string v4, "text"

    .line 410
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "long"

    .line 411
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "image"

    .line 412
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method


# virtual methods
.method public getCellItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 452
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 447
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    return v0
.end method

.method public getTextCount()I
    .locals 1

    .line 433
    iget v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    return v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 385
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    return v0
.end method

.method public isImageOnly()Z
    .locals 4

    .line 426
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "image"

    iget-object v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 419
    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public populate(Landroidx/slice/SliceItem;)Z
    .locals 11
    .param p1, "cellItem"    # Landroidx/slice/SliceItem;

    .line 333
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "format":Ljava/lang/String;
    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "slice"

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const-string v2, "action"

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "slice"

    .line 339
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 341
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 343
    :cond_2
    const-string v2, "action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    iput-object p1, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentIntent:Landroidx/slice/SliceItem;

    .line 346
    :cond_3
    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "imageCount":I
    move v5, v2

    move v2, v3

    .local v2, "i":I
    .local v5, "imageCount":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 349
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    .line 350
    .local v6, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "itemFormat":Ljava/lang/String;
    const-string v8, "content_description"

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    iput-object v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 353
    :cond_4
    iget v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    const/4 v9, 0x2

    if-ge v8, v9, :cond_7

    const-string v8, "text"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "long"

    .line 354
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 355
    :cond_5
    iget v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    add-int/2addr v8, v4

    iput v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mTextCount:I

    .line 356
    iget-object v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v9, "title"

    .line 358
    invoke-virtual {v8, v9}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "title"

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 359
    :cond_6
    iput-object v6, p0, Landroidx/slice/widget/GridContent$CellContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 361
    :cond_7
    if-ge v5, v4, :cond_a

    const-string v8, "image"

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 362
    const-string v8, "no_tint"

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 363
    const-string v8, "large"

    invoke-virtual {v6, v8}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_1

    :cond_8
    move v9, v4

    :goto_1
    iput v9, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    goto :goto_2

    .line 367
    :cond_9
    iput v3, p0, Landroidx/slice/widget/GridContent$CellContent;->mImageMode:I

    .line 369
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 370
    iput-boolean v4, p0, Landroidx/slice/widget/GridContent$CellContent;->mHasImage:Z

    .line 371
    iget-object v8, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v6    # "item":Landroidx/slice/SliceItem;
    .end local v7    # "itemFormat":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 374
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "i":I
    .end local v5    # "imageCount":I
    :cond_b
    goto :goto_4

    :cond_c
    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent$CellContent;->isValidCellContent(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 375
    iget-object v1, p0, Landroidx/slice/widget/GridContent$CellContent;->mCellItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v1

    return v1
.end method
