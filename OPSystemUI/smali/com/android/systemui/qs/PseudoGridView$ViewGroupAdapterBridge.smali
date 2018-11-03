.class public Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
.super Landroid/database/DataSetObserver;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PseudoGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewGroupAdapterBridge"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/BaseAdapter;

.field private mReleased:Z

.field private final mViewGroup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;

    .line 154
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    .line 156
    iput-object p2, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    .line 160
    return-void
.end method

.method public static link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 151
    new-instance v0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 152
    return-void
.end method

.method private refresh()V
    .locals 7

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mViewGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->release()V

    .line 169
    return-void

    .line 171
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 172
    .local v1, "childCount":I
    iget-object v2, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 173
    .local v2, "adapterCount":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 174
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 175
    if-ge v4, v2, :cond_5

    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, "oldView":Landroid/view/View;
    if-ge v4, v1, :cond_2

    .line 178
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 180
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6, v4, v5, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 181
    .local v6, "newView":Landroid/view/View;
    if-nez v5, :cond_3

    .line 183
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 184
    :cond_3
    if-eq v5, v6, :cond_4

    .line 186
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 187
    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 189
    .end local v5    # "oldView":Landroid/view/View;
    .end local v6    # "newView":Landroid/view/View;
    :cond_4
    :goto_1
    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 191
    .local v5, "lastIndex":I
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 174
    .end local v5    # "lastIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private release()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mReleased:Z

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->refresh()V

    .line 199
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->release()V

    .line 204
    return-void
.end method
