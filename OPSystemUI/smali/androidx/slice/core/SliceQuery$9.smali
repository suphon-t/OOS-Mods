.class final Landroidx/slice/core/SliceQuery$9;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/core/SliceQuery;->filter(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mNext:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$f:Landroidx/slice/core/SliceQuery$Filter;

.field final synthetic val$input:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Landroidx/slice/core/SliceQuery$Filter;)V
    .locals 0

    .line 293
    iput-object p1, p0, Landroidx/slice/core/SliceQuery$9;->val$input:Ljava/util/Iterator;

    iput-object p2, p0, Landroidx/slice/core/SliceQuery$9;->val$f:Landroidx/slice/core/SliceQuery$Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-direct {p0}, Landroidx/slice/core/SliceQuery$9;->findNext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/core/SliceQuery$9;->mNext:Ljava/lang/Object;

    return-void
.end method

.method private findNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 297
    :goto_0
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$9;->val$input:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$9;->val$input:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "i":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroidx/slice/core/SliceQuery$9;->val$f:Landroidx/slice/core/SliceQuery$Filter;

    invoke-interface {v1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    return-object v0

    .line 302
    .end local v0    # "i":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$9;->mNext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$9;->mNext:Ljava/lang/Object;

    .line 314
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/slice/core/SliceQuery$9;->findNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/core/SliceQuery$9;->mNext:Ljava/lang/Object;

    .line 315
    return-object v0
.end method
