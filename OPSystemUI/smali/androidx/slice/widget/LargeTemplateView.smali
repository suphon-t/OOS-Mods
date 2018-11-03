.class public Landroidx/slice/widget/LargeTemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "LargeTemplateView.java"


# instance fields
.field private final mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

.field private mDisplayedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedItemsHeight:I

.field private final mForeground:Landroid/view/View;

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoc:[I

.field private mParent:Landroidx/slice/widget/SliceView;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    .line 56
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 58
    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter;

    invoke-direct {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    .line 59
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 60
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    .line 63
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 70
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private updateDisplayedItems(I)V
    .locals 5
    .param p1, "height"    # I

    .line 197
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v0

    .line 202
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Landroidx/slice/SliceItem;

    iget-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 205
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1, p1}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    .line 209
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 210
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/slice/widget/LargeTemplateView;->mTintColor:I

    invoke-virtual {v1, v2, v3, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 211
    invoke-direct {p0}, Landroidx/slice/widget/LargeTemplateView;->updateOverscroll()V

    .line 212
    return-void

    .line 198
    .end local v0    # "mode":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->resetView()V

    .line 199
    return-void
.end method

.method private updateOverscroll()V
    .locals 4

    .line 215
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    .local v0, "scrollable":Z
    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v3, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 128
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    return v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v0

    return v0

    .line 134
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onAttachedToWindow()V

    .line 76
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    .line 77
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, v1, p0}, Landroidx/slice/widget/LargeSliceAdapter;->setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V

    .line 78
    return-void
.end method

.method public onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 94
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->isSliceViewClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 97
    return-void

    .line 99
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 100
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 102
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    aget v4, v4, v3

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 103
    .local v2, "y":I
    iget-object v4, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 105
    .end local v0    # "x":I
    .end local v2    # "y":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 106
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 107
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 108
    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 111
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 83
    .local v0, "height":I
    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    .line 84
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 87
    return-void
.end method

.method public resetView()V
    .locals 4

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    .line 224
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    .line 226
    iput-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 227
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .line 179
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 180
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->setLastUpdated(J)V

    .line 181
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "newMode"    # I

    .line 117
    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    if-eq v0, p1, :cond_0

    .line 118
    iput p1, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    .line 119
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 121
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 124
    .end local v0    # "sliceHeight":I
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 3
    .param p1, "scrollingEnabled"    # Z

    .line 187
    iget-boolean v0, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 188
    iput-boolean p1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    .line 189
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 191
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 194
    .end local v0    # "sliceHeight":I
    :cond_0
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 173
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 174
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setShowLastUpdated(Z)V

    .line 175
    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 2
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 147
    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 148
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 151
    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceActions(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 3
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 160
    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 161
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    .line 162
    .local v0, "sliceHeight":I
    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 163
    return-void
.end method

.method public setStyle(Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttrs"    # I
    .param p3, "defStyleRes"    # I

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroid/util/AttributeSet;II)V

    .line 168
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/slice/widget/LargeSliceAdapter;->setStyle(Landroid/util/AttributeSet;II)V

    .line 169
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 141
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 142
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    .line 143
    return-void
.end method
