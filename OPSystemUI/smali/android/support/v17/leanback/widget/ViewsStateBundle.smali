.class Landroid/support/v17/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private mChildStates:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLimitNumber:I

.field private mSavePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 57
    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 63
    :cond_0
    return-void
.end method

.method public final loadFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedBundle"    # Landroid/os/Bundle;

    .line 89
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public final loadView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .line 154
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 159
    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 163
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 66
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method

.method public final saveAsBundle()Landroid/os/Bundle;
    .locals 6

    .line 75
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    nop

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 83
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 84
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;"
    goto :goto_0

    .line 85
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;>;"
    :cond_1
    return-object v1

    .line 76
    .end local v0    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseArray<Landroid/os/Parcelable;>;>;"
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final saveOffscreenView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .line 208
    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    .line 215
    nop

    .line 219
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "id"    # I

    .line 189
    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    if-eqz v0, :cond_1

    .line 190
    invoke-static {p3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 192
    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p1, v2

    .line 196
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 198
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_1
    return-object p1
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I

    .line 172
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 175
    .local v1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 176
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method
