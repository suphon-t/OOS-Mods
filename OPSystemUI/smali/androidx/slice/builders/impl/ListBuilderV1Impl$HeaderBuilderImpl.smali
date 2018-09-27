.class public Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 633
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 634
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3
    .param p1, "b"    # Landroidx/slice/Slice$Builder;

    .line 640
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 643
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 646
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    .line 649
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    const-string v1, "content_description"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 652
    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_4

    .line 653
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 654
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "title"

    const-string v2, "shortcut"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 655
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 657
    .end local v0    # "sb":Landroidx/slice/Slice$Builder;
    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 663
    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "text"

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    .line 664
    if-eqz p2, :cond_0

    .line 665
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method
