.class public Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mEndItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mStartItem:Landroidx/slice/Slice;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 404
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    .line 405
    return-void
.end method


# virtual methods
.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 4
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v0, "hints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 540
    const-string v1, "no_tint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 543
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    if-eqz p3, :cond_2

    .line 546
    const-string v1, "partial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_2
    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    .line 550
    .local v1, "sb":Landroidx/slice/Slice$Builder;
    if-eqz p3, :cond_3

    .line 551
    const-string v2, "partial"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 553
    :cond_3
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3
    .param p1, "b"    # Landroidx/slice/Slice$Builder;

    .line 589
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 592
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 595
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 598
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 598
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 599
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/Slice;

    .line 600
    .local v2, "item":Landroidx/slice/Slice;
    invoke-virtual {p1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 598
    .end local v2    # "item":Landroidx/slice/Slice;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 603
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    const-string v2, "content_description"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 605
    :cond_4
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_5

    .line 606
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 607
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string/jumbo v1, "title"

    const-string v2, "shortcut"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 608
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 610
    .end local v0    # "sb":Landroidx/slice/Slice$Builder;
    :cond_5
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 577
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    .line 578
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 477
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 478
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 486
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 492
    new-instance v0, Landroidx/slice/SliceItem;

    const-string/jumbo v1, "text"

    const-string/jumbo v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    .line 493
    if-eqz p2, :cond_0

    .line 494
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method
