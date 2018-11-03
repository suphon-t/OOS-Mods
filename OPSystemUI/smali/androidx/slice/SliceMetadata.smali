.class public Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "SliceMetadata.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpiry:J

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mLastUpdated:J

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

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

.field private mTemplateType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slice"    # Landroidx/slice/Slice;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 126
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    .line 127
    const-string v0, "long"

    const-string/jumbo v1, "ttl"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 128
    .local v0, "ttlItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 131
    :cond_0
    const-string v1, "long"

    const-string v3, "last_updated"

    invoke-static {p2, v1, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 132
    .local v1, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 136
    :cond_1
    new-instance v2, Landroidx/slice/widget/ListContent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 137
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 138
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderTemplateType()I

    move-result v2

    iput v2, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    .line 139
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 141
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 142
    .local v2, "action":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    .line 143
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    .line 145
    :cond_2
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 114
    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 434
    const-string v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 435
    .local v0, "actionGroup":Landroidx/slice/SliceItem;
    const-string v1, "actions"

    const-string v3, "shortcut"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "slice"

    .line 437
    invoke-static {v0, v3, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 439
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 442
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 443
    .local v5, "item":Landroidx/slice/SliceItem;
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v6, v5}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v5    # "item":Landroidx/slice/SliceItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    .end local v4    # "i":I
    :cond_1
    return-object v2

    .line 447
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    .line 394
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 402
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    return-wide v0
.end method
