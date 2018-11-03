.class Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;
.super Ljava/lang/Object;
.source "LargeSliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdGenerator"
.end annotation


# instance fields
.field private final mCurrentIds:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLong:J

.field private final mUsedIds:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mNextLong:J

    .line 286
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mCurrentIds:Landroid/support/v4/util/ArrayMap;

    .line 287
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mUsedIds:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/slice/widget/LargeSliceAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/slice/widget/LargeSliceAdapter$1;

    .line 284
    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;-><init>()V

    return-void
.end method

.method private genString(Landroidx/slice/SliceItem;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 306
    const-string v0, "slice"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "action"

    .line 307
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 308
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId(Landroidx/slice/SliceItem;I)J
    .locals 8
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "mode"    # I

    .line 290
    invoke-direct {p0, p1}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->genString(Landroidx/slice/SliceItem;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "str":Ljava/lang/String;
    const-string v1, "summary"

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 292
    .local v1, "summary":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mCurrentIds:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mCurrentIds:Landroid/support/v4/util/ArrayMap;

    iget-wide v3, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mNextLong:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mNextLong:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mCurrentIds:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 299
    .local v2, "id":J
    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mUsedIds:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 300
    .local v4, "usedIdIndex":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 301
    .local v5, "index":I
    :goto_0
    iget-object v6, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mUsedIds:Landroid/support/v4/util/ArrayMap;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    mul-int/lit16 v6, v5, 0x2710

    int-to-long v6, v6

    add-long/2addr v6, v2

    return-wide v6
.end method

.method public resetUsage()V
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->mUsedIds:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 315
    return-void
.end method
