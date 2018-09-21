.class public Lcom/android/systemui/recents/views/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TV;>;"
        }
    .end annotation
.end field

.field mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer<",
            "TV;TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p2, "viewCreator":Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;, "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    .line 45
    return-void
.end method


# virtual methods
.method getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TV;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p1, "preferredData":Ljava/lang/Object;, "TT;"
    .local p2, "prepareData":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 56
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 57
    .local v1, "isNewView":Z
    iget-object v2, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    iget-object v3, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->createView(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    goto :goto_2

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "vpv":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v4, v3, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    move-object v0, v3

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 68
    goto :goto_1

    .line 70
    .end local v3    # "vpv":Ljava/lang/Object;, "TV;"
    :cond_1
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 73
    iget-object v3, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v2, v0, p2, v1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 77
    return-object v0
.end method

.method returnViewToPool(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<TV;TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->onReturnViewToPool(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
