.class public Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private mHasEndActionOrToggle:Z

.field private mHasEndImage:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 912
    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 913
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 890
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-object v0
.end method


# virtual methods
.method public addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 1196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    .line 1197
    return-object p0

    .line 1191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an icon to end items when anaction has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1319
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1320
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 1336
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    .line 1337
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 1086
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 1087
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1095
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1096
    return-object p0
.end method
