.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;
    }
.end annotation


# instance fields
.field mIsError:Z


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .param p2, "spec"    # Landroidx/slice/SliceSpec;

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 55
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 177
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 180
    :cond_0
    return-void
.end method

.method public createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 143
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
