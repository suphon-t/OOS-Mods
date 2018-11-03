.class public Landroidx/slice/core/SliceQuery;
.super Ljava/lang/Object;
.source "SliceQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/core/SliceQuery$Filter;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/slice/SliceItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Landroidx/slice/core/SliceQuery;->checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;

    .line 222
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "subtype"    # Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static collect(Ljava/util/Iterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 287
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_0
    return-object v0
.end method

.method private static filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Landroidx/slice/core/SliceQuery$Filter<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 293
    .local p0, "input":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "f":Landroidx/slice/core/SliceQuery$Filter;, "Landroidx/slice/core/SliceQuery$Filter<TT;>;"
    new-instance v0, Landroidx/slice/core/SliceQuery$9;

    invoke-direct {v0, p0, p1}, Landroidx/slice/core/SliceQuery$9;-><init>(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)V

    return-object v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;

    .line 177
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->stream(Landroidx/slice/Slice;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$4;

    invoke-direct {v1, p1, p2, p3}, Landroidx/slice/core/SliceQuery$4;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findFirst(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    return-object v0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;

    .line 212
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->stream(Landroidx/slice/SliceItem;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$7;

    invoke-direct {v1, p1, p2, p3}, Landroidx/slice/core/SliceQuery$7;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findFirst(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # Ljava/lang/String;
    .param p3, "nonHints"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p0, p1, v1, v0}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "nonHints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->stream(Landroidx/slice/SliceItem;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$3;

    invoke-direct {v1, p1, p2, p3}, Landroidx/slice/core/SliceQuery$3;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/core/SliceQuery;->collect(Ljava/util/Iterator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static findFirst(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 321
    .local p0, "filter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "def":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "r":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    return-object v0

    .line 324
    .end local v0    # "r":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 325
    :cond_1
    return-object p1
.end method

.method public static findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .line 189
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->stream(Landroidx/slice/Slice;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$5;

    invoke-direct {v1, p1, p2}, Landroidx/slice/core/SliceQuery$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findFirst(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public static findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2
    .param p0, "s"    # Landroidx/slice/SliceItem;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .line 200
    invoke-static {p0}, Landroidx/slice/core/SliceQuery;->stream(Landroidx/slice/SliceItem;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Landroidx/slice/core/SliceQuery$6;

    invoke-direct {v1, p1, p2}, Landroidx/slice/core/SliceQuery$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findFirst(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public static findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 4
    .param p0, "s"    # Landroidx/slice/Slice;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "hints"    # [Ljava/lang/String;
    .param p4, "nonHints"    # [Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 276
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-static {v2, p1}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-static {v2, p2}, Landroidx/slice/core/SliceQuery;->checkSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-static {v2, p3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    invoke-static {v2, p4}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    return-object v2

    .line 274
    .end local v2    # "item":Landroidx/slice/SliceItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSliceItemStream(Ljava/util/ArrayList;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/Iterator<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 250
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    new-instance v0, Landroidx/slice/core/SliceQuery$8;

    invoke-direct {v0, p0}, Landroidx/slice/core/SliceQuery$8;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static varargs hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "itemHints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 46
    .local v4, "hint":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    const/4 v0, 0x1

    return v0

    .line 45
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_2
    return v0
.end method

.method public static varargs hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "item"    # Landroidx/slice/SliceItem;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "itemHints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 59
    .local v5, "hint":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    return v3

    .line 58
    .end local v5    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_2
    return v0
.end method

.method public static stream(Landroidx/slice/Slice;)Ljava/util/Iterator;
    .locals 2
    .param p0, "slice"    # Landroidx/slice/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/Iterator<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_0
    invoke-static {v0}, Landroidx/slice/core/SliceQuery;->getSliceItemStream(Ljava/util/ArrayList;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public static stream(Landroidx/slice/SliceItem;)Ljava/util/Iterator;
    .locals 2
    .param p0, "slice"    # Landroidx/slice/SliceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/SliceItem;",
            ")",
            "Ljava/util/Iterator<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {v0}, Landroidx/slice/core/SliceQuery;->getSliceItemStream(Ljava/util/ArrayList;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
