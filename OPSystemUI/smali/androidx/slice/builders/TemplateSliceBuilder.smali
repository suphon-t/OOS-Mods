.class public abstract Landroidx/slice/builders/TemplateSliceBuilder;
.super Ljava/lang/Object;
.source "TemplateSliceBuilder.java"


# instance fields
.field private final mBuilder:Landroidx/slice/Slice$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

.field private mSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p2}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    .line 83
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Landroidx/slice/builders/TemplateSliceBuilder;->getSpecs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    .line 85
    invoke-virtual {p0}, Landroidx/slice/builders/TemplateSliceBuilder;->selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 86
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid specs found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    .line 58
    iput-object p1, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 59
    invoke-virtual {p0, p1}, Landroidx/slice/builders/TemplateSliceBuilder;->setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 60
    return-void
.end method

.method private getSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroidx/slice/SliceProvider;->getCurrentSpecs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 140
    :cond_0
    const-string v0, "TemplateSliceBuilder"

    const-string v1, "Not currently bunding a slice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/slice/SliceSpec;

    const/4 v1, 0x0

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/slice/Slice;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mImpl:Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method protected checkCompatible(Landroidx/slice/SliceSpec;)Z
    .locals 4
    .param p1, "candidate"    # Landroidx/slice/SliceSpec;

    .line 126
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 128
    iget-object v3, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    invoke-virtual {v3, p1}, Landroidx/slice/SliceSpec;->canRender(Landroidx/slice/SliceSpec;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method protected getBuilder()Landroidx/slice/Slice$Builder;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/slice/builders/TemplateSliceBuilder;->mBuilder:Landroidx/slice/Slice$Builder;

    return-object v0
.end method

.method protected getClock()Landroidx/slice/Clock;
    .locals 1

    .line 149
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Landroidx/slice/SliceProvider;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    return-object v0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method
