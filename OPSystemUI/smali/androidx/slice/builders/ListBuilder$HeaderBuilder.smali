.class public Landroidx/slice/builders/ListBuilder$HeaderBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1389
    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/ListBuilder;->createHeaderBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 1390
    return-void
.end method

.method static synthetic access$100(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    .line 1373
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    return-object v0
.end method


# virtual methods
.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 1526
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    .line 1527
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 1411
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1412
    return-object p0
.end method
