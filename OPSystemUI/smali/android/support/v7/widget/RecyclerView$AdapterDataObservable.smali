.class Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11940
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .line 11942
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 11950
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11951
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 11950
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11953
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 11991
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11992
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 11991
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11994
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 11957
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 11965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11966
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11965
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11968
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11975
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11976
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 11975
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11978
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 11985
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 11986
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 11985
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11988
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
