.class public Landroidx/slice/builders/impl/ListBuilderV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;
    }
.end annotation


# instance fields
.field private mIsError:Z

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceHeader:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V
    .locals 0
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .param p2, "spec"    # Landroidx/slice/SliceSpec;
    .param p3, "clock"    # Landroidx/slice/Clock;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    .line 82
    return-void
.end method


# virtual methods
.method public addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 110
    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 111
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 112
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 88
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "millis"

    const-string v3, "last_updated"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 89
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceHeader:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceHeader:Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 92
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 94
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/Slice;

    invoke-virtual {v0, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    const-string v1, "actions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 99
    .end local v0    # "sb":Landroidx/slice/Slice$Builder;
    :cond_2
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mIsError:Z

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 102
    :cond_3
    return-void
.end method

.method public createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 350
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
