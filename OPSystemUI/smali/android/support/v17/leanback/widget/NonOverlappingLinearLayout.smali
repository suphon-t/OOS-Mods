.class public Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NonOverlappingLinearLayout.java"


# instance fields
.field mDeferFocusableViewAvailableInLayout:Z

.field mFocusableViewAvailableFixEnabled:Z

.field final mSortedAvailableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 48
    return-void
.end method


# virtual methods
.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 96
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v0, :cond_3

    .line 97
    move-object v0, p1

    .line 98
    .local v0, "i":Landroid/view/View;
    const/4 v1, -0x1

    move-object v2, v0

    move v0, v1

    .line 99
    .local v0, "index":I
    .local v2, "i":Landroid/view/View;
    :goto_0
    if-eq v2, p0, :cond_1

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 101
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 102
    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    if-eq v0, v1, :cond_2

    .line 107
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v0    # "index":I
    .end local v2    # "i":Landroid/view/View;
    :cond_2
    goto :goto_2

    .line 110
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    .line 112
    :goto_2
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 65
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 68
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v1, :cond_2

    .line 69
    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->getChildCount()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 70
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 72
    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 73
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 77
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v1, :cond_4

    .line 78
    move v1, v0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 79
    move v2, v0

    .local v2, "j":I
    :goto_4
    iget-object v3, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 80
    iget-object v3, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 78
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    .end local v1    # "i":I
    :cond_4
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v1, :cond_5

    .line 86
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 87
    nop

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 88
    iget-object v1, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 92
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 85
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    if-eqz v2, :cond_6

    .line 86
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 87
    nop

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 88
    iget-object v2, p0, Landroid/support/v17/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_6
    throw v1
.end method
