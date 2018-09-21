.class public Landroidx/slice/widget/RowContent;
.super Ljava/lang/Object;
.source "RowContent.java"


# instance fields
.field private mContentDescr:Landroidx/slice/SliceItem;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEndItemsContainAction:Z

.field private mIsHeader:Z

.field private mLayoutDirItem:Landroidx/slice/SliceItem;

.field private mLineCount:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mRange:Landroidx/slice/SliceItem;

.field private mRangeHeight:I

.field private mRowSlice:Landroidx/slice/SliceItem;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;

.field private mToggleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rowSlice"    # Landroidx/slice/SliceItem;
    .param p3, "isHeader"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 84
    invoke-direct {p0, p2, p3}, Landroidx/slice/widget/RowContent;->populate(Landroidx/slice/SliceItem;Z)Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mMinHeight:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowContent;->mRangeHeight:I

    .line 93
    :cond_0
    return-void
.end method

.method private determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V
    .locals 7
    .param p1, "rowSlice"    # Landroidx/slice/SliceItem;

    .line 197
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "possibleStartItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "format":Ljava/lang/String;
    const-string v4, "action"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    const-string v5, "image"

    invoke-static {v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "slice"

    .line 203
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "long"

    .line 204
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "image"

    .line 205
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 210
    .end local v2    # "format":Ljava/lang/String;
    :cond_2
    const-string v2, "shortcut"

    const-string v4, "title"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "hints":[Ljava/lang/String;
    const-string v4, "slice"

    invoke-static {p1, v4, v2, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, "possiblePrimaries":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    const-string v4, "action"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 214
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 215
    :cond_3
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 216
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-ne v4, v6, :cond_4

    .line 218
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    iput-object v3, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 219
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 220
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    iput-object v3, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    .line 222
    :cond_5
    :goto_0
    return-void
.end method

.method private static filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "rowSlice"    # Landroidx/slice/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 421
    .local v2, "i":Landroidx/slice/SliceItem;
    invoke-static {p0, v2}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v2    # "i":Landroidx/slice/SliceItem;
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    return-object v0
.end method

.method private static hasText(Landroidx/slice/SliceItem;)Z
    .locals 1
    .param p0, "textSlice"    # Landroidx/slice/SliceItem;

    .line 362
    if-eqz p0, :cond_1

    const-string v0, "partial"

    .line 363
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidRow(Landroidx/slice/SliceItem;)Z
    .locals 5
    .param p0, "rowSlice"    # Landroidx/slice/SliceItem;

    .line 393
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 394
    return v0

    .line 397
    :cond_0
    const-string v1, "slice"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "action"

    .line 398
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const-string v2, "see_more"

    invoke-virtual {p0, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    return v3

    .line 405
    :cond_2
    move v2, v0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 406
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-static {p0, v4}, Landroidx/slice/widget/RowContent;->isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    return v3

    .line 405
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "rowItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method private static isValidRowContent(Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;)Z
    .locals 4
    .param p0, "slice"    # Landroidx/slice/SliceItem;
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 432
    const-string v0, "keywords"

    const-string v1, "ttl"

    const-string v2, "last_updated"

    const-string v3, "horizontal"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "content_description"

    .line 433
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "itemFormat":Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "text"

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "long"

    .line 439
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "action"

    .line 440
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "input"

    .line 441
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "slice"

    .line 442
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "int"

    .line 443
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "range"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 434
    .end local v0    # "itemFormat":Ljava/lang/String;
    :cond_3
    :goto_2
    return v1
.end method

.method private populate(Landroidx/slice/SliceItem;Z)Z
    .locals 10
    .param p1, "rowSlice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z

    .line 99
    iput-boolean p2, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    .line 100
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    .line 101
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "RowContent"

    const-string v2, "Provided SliceItem is invalid for RowContent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowContent;->determineStartAndPrimaryAction(Landroidx/slice/SliceItem;)V

    .line 107
    const-string v0, "text"

    const-string v2, "content_description"

    invoke-static {p1, v0, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowContent;->mContentDescr:Landroidx/slice/SliceItem;

    .line 110
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 112
    .local v0, "rowItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "action"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "slice"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v4, "shortcut"

    const-string v5, "title"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-static {v2}, Landroidx/slice/widget/RowContent;->isValidRow(Landroidx/slice/SliceItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Landroidx/slice/SliceItem;

    .line 117
    invoke-static {p1}, Landroidx/slice/widget/RowContent;->filterInvalidItems(Landroidx/slice/SliceItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const-string v4, "int"

    const-string v5, "layout_direction"

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v6}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 122
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_4

    .line 124
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    nop

    :cond_3
    iput-object v6, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    .line 128
    :cond_4
    const-string v2, "range"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    iput-object p1, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    .line 131
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 133
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_6

    .line 134
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_6
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_7

    .line 137
    iget-object v2, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "endItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    move v4, v1

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 143
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 144
    .local v5, "item":Landroidx/slice/SliceItem;
    const-string v6, "text"

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 145
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    const-string v6, "title"

    .line 146
    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 147
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 148
    :cond_9
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_a

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 149
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 150
    :cond_a
    iget-object v6, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v6, :cond_c

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 151
    iput-object v5, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    goto :goto_1

    .line 154
    :cond_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v5    # "item":Landroidx/slice/SliceItem;
    :cond_c
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "i":I
    :cond_d
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-static {v4}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 158
    iget v4, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 160
    :cond_e
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-static {v4}, Landroidx/slice/widget/RowContent;->hasText(Landroidx/slice/SliceItem;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 161
    iget v4, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    .line 164
    :cond_f
    iget-object v4, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_10

    const-string v4, "long"

    iget-object v5, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    .line 165
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v3

    goto :goto_2

    :cond_10
    move v4, v1

    .line 166
    .local v4, "hasTimestamp":Z
    :goto_2
    move v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "hasTimestamp":Z
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_14

    .line 167
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    .line 168
    .local v6, "item":Landroidx/slice/SliceItem;
    const-string v7, "action"

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_11

    move v7, v3

    goto :goto_4

    :cond_11
    move v7, v1

    .line 169
    .local v7, "isAction":Z
    :goto_4
    const-string v8, "long"

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 170
    if-nez v5, :cond_13

    .line 171
    const/4 v5, 0x1

    .line 172
    iget-object v8, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 175
    :cond_12
    invoke-direct {p0, v6, v7}, Landroidx/slice/widget/RowContent;->processContent(Landroidx/slice/SliceItem;Z)V

    .line 166
    .end local v6    # "item":Landroidx/slice/SliceItem;
    .end local v7    # "isAction":Z
    :cond_13
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 179
    .end local v2    # "endItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    .end local v4    # "i":I
    .end local v5    # "hasTimestamp":Z
    :cond_14
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v1

    return v1
.end method

.method private processContent(Landroidx/slice/SliceItem;Z)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "isAction"    # Z

    .line 183
    if-eqz p2, :cond_0

    .line 184
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v0, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 185
    .local v0, "ac":Landroidx/slice/core/SliceAction;
    invoke-interface {v0}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "ac":Landroidx/slice/core/SliceAction;
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mEndItemsContainAction:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Landroidx/slice/widget/RowContent;->mEndItemsContainAction:Z

    .line 191
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 2

    .line 347
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/slice/widget/RowContent;->mMinHeight:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    .line 351
    .local v0, "rowHeight":I
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 352
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 353
    iget v1, p0, Landroidx/slice/widget/RowContent;->mRangeHeight:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 355
    :cond_3
    iget-boolean v1, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    goto :goto_2

    :cond_4
    iget v1, p0, Landroidx/slice/widget/RowContent;->mRangeHeight:I

    :goto_2
    move v0, v1

    .line 358
    :cond_5
    :goto_3
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mContentDescr:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEndItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInputRangeThumb()Landroidx/slice/SliceItem;
    .locals 4

    .line 250
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 253
    const-string v2, "image"

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    return-object v2

    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutDirItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 331
    iget v0, p0, Landroidx/slice/widget/RowContent;->mLineCount:I

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/SliceItem;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getRange()Landroidx/slice/SliceItem;
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSlice()Landroidx/slice/SliceItem;
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getActualHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/RowContent;->mMaxHeight:I

    :goto_0
    return v0
.end method

.method public getStartItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    :goto_0
    return-object v0
.end method

.method public getSubtitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSummaryItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSummaryItem:Landroidx/slice/SliceItem;

    :goto_0
    return-object v0
.end method

.method public getTitleItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 282
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getToggleItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mToggleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDefaultSeeMore()Z
    .locals 2

    .line 371
    const-string v0, "action"

    iget-object v1, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    .line 372
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "see_more"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRowSlice:Landroidx/slice/SliceItem;

    .line 373
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

    .line 380
    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mStartItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowContent;->mRange:Landroidx/slice/SliceItem;

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
