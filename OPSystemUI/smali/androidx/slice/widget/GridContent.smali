.class public Landroidx/slice/widget/GridContent;
.super Ljava/lang/Object;
.source "GridContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridContent$CellContent;
    }
.end annotation


# instance fields
.field private mAllImages:Z

.field private mAllImagesHeight:I

.field private mBigPicMaxHeight:I

.field private mBigPicMinHeight:I

.field private mColorItem:Landroidx/slice/SliceItem;

.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mGridContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation
.end field

.field private mHasImage:Z

.field private mImageTextHeight:I

.field private mLargestImageMode:I

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mMaxCellLineCount:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridItem"    # Landroidx/slice/SliceItem;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 83
    invoke-direct {p0, p2}, Landroidx/slice/widget/GridContent;->populate(Landroidx/slice/SliceItem;)Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mBigPicMinHeight:I

    .line 88
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mBigPicMaxHeight:I

    .line 89
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mAllImagesHeight:I

    .line 90
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mImageTextHeight:I

    .line 91
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    .line 92
    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/GridContent;->mMaxHeight:I

    .line 94
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private filterAndProcessItems(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 245
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "filteredItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 247
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    .line 249
    .local v3, "item":Landroidx/slice/SliceItem;
    const-string v4, "see_more"

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    .line 250
    .local v4, "containsSeeMore":Z
    :goto_1
    if-nez v4, :cond_2

    const-string v6, "shortcut"

    const-string v7, "see_more"

    const-string v8, "keywords"

    const-string v9, "ttl"

    const-string v10, "last_updated"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v3, v6}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    move v5, v1

    nop

    .line 253
    .local v5, "isNonCellContent":Z
    :cond_2
    :goto_2
    const-string v6, "content_description"

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    iput-object v3, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_3

    .line 255
    :cond_3
    if-nez v5, :cond_4

    .line 256
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v3    # "item":Landroidx/slice/SliceItem;
    .end local v4    # "containsSeeMore":Z
    .end local v5    # "isNonCellContent":Z
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method private getHeight(Z)I
    .locals 3
    .param p1, "isSmall"    # Z

    .line 295
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    return v1

    .line 298
    :cond_0
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/slice/widget/GridContent;->mBigPicMinHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mBigPicMaxHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroidx/slice/widget/GridContent;->mAllImagesHeight:I

    :goto_0
    return v0

    .line 303
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v0

    if-le v0, v2, :cond_5

    move v1, v2

    nop

    :cond_5
    move v0, v1

    .line 304
    .local v0, "twoLines":Z
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v1

    .line 305
    .local v1, "hasImage":Z
    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    iget v2, p0, Landroidx/slice/widget/GridContent;->mMaxHeight:I

    goto :goto_1

    :cond_6
    iget v2, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    if-nez v2, :cond_8

    :cond_7
    iget v2, p0, Landroidx/slice/widget/GridContent;->mMinHeight:I

    goto :goto_1

    :cond_8
    iget v2, p0, Landroidx/slice/widget/GridContent;->mImageTextHeight:I

    :goto_1
    return v2
.end method

.method private populate(Landroidx/slice/SliceItem;)Z
    .locals 6
    .param p1, "gridItem"    # Landroidx/slice/SliceItem;

    .line 100
    const-string v0, "int"

    const-string v1, "color"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mColorItem:Landroidx/slice/SliceItem;

    .line 101
    const-string v0, "slice"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "action"

    .line 102
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v2, "int"

    const-string v3, "layout_direction"

    invoke-static {v0, v2, v3, v1, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 105
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 112
    :cond_2
    const-string v0, "see_more"

    invoke-static {p1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 113
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "slice"

    iget-object v2, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    .line 116
    :cond_3
    const-string v0, "shortcut"

    const-string v2, "title"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "hints":[Ljava/lang/String;
    const-string v2, "slice"

    const-string v3, "actions"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 120
    const-string v3, "slice"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 121
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_4

    const-string v4, "slice"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    .line 126
    :cond_4
    invoke-direct {p0, v3}, Landroidx/slice/widget/GridContent;->filterAndProcessItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    .line 131
    :cond_5
    nop

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 132
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 133
    .local v2, "item":Landroidx/slice/SliceItem;
    const-string v4, "content_description"

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_2

    .line 136
    :cond_6
    new-instance v4, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v4, v2}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 137
    .local v4, "cc":Landroidx/slice/widget/GridContent$CellContent;
    invoke-direct {p0, v4}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 131
    .end local v2    # "item":Landroidx/slice/SliceItem;
    .end local v4    # "cc":Landroidx/slice/widget/GridContent$CellContent;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    .end local v1    # "i":I
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :cond_7
    goto :goto_3

    .line 141
    :cond_8
    new-instance v1, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v1, p1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    .line 142
    .local v1, "cc":Landroidx/slice/widget/GridContent$CellContent;
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    .line 144
    .end local v1    # "cc":Landroidx/slice/widget/GridContent$CellContent;
    :goto_3
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v1

    return v1
.end method

.method private processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 2
    .param p1, "cc"    # Landroidx/slice/widget/GridContent$CellContent;

    .line 148
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    .line 152
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isImageOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    .line 156
    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTextCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    .line 157
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->hasImage()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    .line 158
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    .line 160
    :cond_2
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->getHeight(Z)I

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

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

    .line 201
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getGridContent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLargestImageMode()I
    .locals 1

    .line 238
    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    return v0
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getMaxCellLineCount()I
    .locals 1

    .line 266
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    return v0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridContent;->getHeight(Z)I

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    return v0
.end method

.method public isAllImages()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

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
