.class Landroidx/car/widget/GridLayoutManagerUtils;
.super Ljava/lang/Object;
.source "GridLayoutManagerUtils.java"


# direct methods
.method public static getFirstRowItemCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 6
    .param p0, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 38
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 39
    .local v0, "manager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 40
    .local v1, "itemCount":I
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 42
    .local v2, "spanCount":I
    const/4 v3, 0x0

    .line 43
    .local v3, "spanSum":I
    const/4 v4, 0x0

    .line 44
    .local v4, "pos":I
    :goto_0
    if-ge v4, v1, :cond_0

    if-ge v3, v2, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v4
.end method

.method public static getLastIndexOnSameRow(ILandroid/support/v7/widget/RecyclerView;)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 78
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 79
    .local v0, "spanCount":I
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/car/widget/GridLayoutManagerUtils;->getSpanIndex(Landroid/view/View;)I

    move-result v1

    .line 80
    .local v1, "spanSum":I
    move v2, v1

    move v1, p0

    .local v1, "i":I
    .local v2, "spanSum":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 81
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/car/widget/GridLayoutManagerUtils;->getSpanSize(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    if-le v2, v0, :cond_0

    .line 88
    add-int/lit8 v3, v1, -0x1

    return v3

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static getSpanIndex(Landroid/view/View;)I
    .locals 2
    .param p0, "item"    # Landroid/view/View;

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 59
    .local v0, "layoutParams":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    return v1
.end method

.method public static getSpanSize(Landroid/view/View;)I
    .locals 2
    .param p0, "item"    # Landroid/view/View;

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 68
    .local v0, "layoutParams":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    return v1
.end method
