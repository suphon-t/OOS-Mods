.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field mFlag:I

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroid/support/v7/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    .line 697
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .locals 3
    .param p1, "baseGridView"    # Landroid/support/v17/leanback/widget/BaseGridView;

    .line 711
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 399
    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 439
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 451
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    .line 550
    const v1, 0x36200

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 556
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 558
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    .line 565
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 571
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 591
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 654
    const v2, 0x800033

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 663
    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 673
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 677
    new-instance v2, Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    .line 682
    new-instance v2, Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ItemAlignment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    .line 702
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 704
    new-instance v2, Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    .line 1429
    new-instance v2, Landroid/support/v17/leanback/widget/GridLayoutManager$1;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$1;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1596
    new-instance v2, Landroid/support/v17/leanback/widget/GridLayoutManager$2;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$2;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 712
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 713
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 715
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemPrefetchEnabled(Z)V

    .line 716
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 57
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 1

    .line 1838
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .locals 3

    .line 1933
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    .line 1936
    return-void
.end method

.method private discardLayoutInfo()V
    .locals 1

    .line 3576
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3577
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 3578
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3579
    return-void
.end method

.method private dispatchChildSelectedAndPositioned()V
    .locals 10

    .line 1025
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    return-void

    .line 1030
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1031
    .local v0, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 1032
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1033
    .local v1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 1035
    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 1036
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v3, :cond_3

    .line 1037
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1039
    :cond_3
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 1043
    :goto_1
    return-void
.end method

.method private fastRelayout()V
    .locals 18

    .line 1950
    move-object/from16 v6, p0

    const/4 v7, 0x0

    .line 1951
    .local v7, "invalidateAfter":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .line 1952
    .local v8, "childCount":I
    iget-object v0, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 1953
    .local v0, "position":I
    const/4 v1, 0x0

    .line 1954
    .local v1, "index":I
    iget v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1955
    move v10, v0

    move v9, v1

    .end local v0    # "position":I
    .end local v1    # "index":I
    .local v9, "index":I
    .local v10, "position":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 1956
    invoke-virtual {v6, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1962
    .local v0, "view":Landroid/view/View;
    invoke-direct {v6, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v1

    if-eq v10, v1, :cond_0

    .line 1963
    const/4 v7, 0x1

    .line 1964
    goto/16 :goto_3

    .line 1966
    :cond_0
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v11

    .line 1967
    .local v11, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v11, :cond_1

    .line 1968
    const/4 v7, 0x1

    .line 1969
    goto/16 :goto_3

    .line 1972
    :cond_1
    iget v1, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v6, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    iget-object v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    .line 1973
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v12, v1, v2

    .line 1975
    .local v12, "startSecondary":I
    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v13

    .line 1976
    .local v13, "start":I
    invoke-virtual {v6, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v14

    .line 1978
    .local v14, "oldPrimarySize":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1979
    .local v15, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v15}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1980
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1981
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1982
    invoke-virtual {v6, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1983
    invoke-virtual {v6, v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1986
    .end local v0    # "view":Landroid/view/View;
    .local v5, "view":Landroid/view/View;
    :cond_2
    move-object v5, v0

    invoke-virtual {v6, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1987
    iget v0, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_3

    .line 1988
    invoke-virtual {v6, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    .line 1989
    .local v0, "primarySize":I
    add-int v1, v13, v0

    .line 1992
    .end local v0    # "primarySize":I
    .local v3, "primarySize":I
    .local v4, "end":I
    :goto_1
    move v3, v0

    move v4, v1

    goto :goto_2

    .line 1991
    .end local v3    # "primarySize":I
    .end local v4    # "end":I
    :cond_3
    invoke-virtual {v6, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    .line 1992
    .restart local v0    # "primarySize":I
    add-int v1, v13, v0

    goto :goto_1

    .line 1994
    .end local v0    # "primarySize":I
    .restart local v3    # "primarySize":I
    .restart local v4    # "end":I
    :goto_2
    iget v1, v11, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object v0, v6

    move-object v2, v5

    move/from16 v16, v7

    move v7, v3

    move v3, v13

    .end local v3    # "primarySize":I
    .local v7, "primarySize":I
    .local v16, "invalidateAfter":Z
    move-object/from16 v17, v5

    move v5, v12

    .end local v5    # "view":Landroid/view/View;
    .local v17, "view":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1995
    if-eq v14, v7, :cond_4

    .line 1998
    const/4 v0, 0x1

    .line 1999
    .end local v16    # "invalidateAfter":Z
    .local v0, "invalidateAfter":Z
    nop

    .line 2002
    move v7, v0

    goto :goto_3

    .line 1955
    .end local v0    # "invalidateAfter":Z
    .end local v4    # "end":I
    .end local v7    # "primarySize":I
    .end local v11    # "location":Landroid/support/v17/leanback/widget/Grid$Location;
    .end local v12    # "startSecondary":I
    .end local v13    # "start":I
    .end local v14    # "oldPrimarySize":I
    .end local v15    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v17    # "view":Landroid/view/View;
    .restart local v16    # "invalidateAfter":Z
    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    goto/16 :goto_0

    .line 2002
    .end local v16    # "invalidateAfter":Z
    .local v7, "invalidateAfter":Z
    :cond_5
    move/from16 v16, v7

    :goto_3
    if-eqz v7, :cond_8

    .line 2003
    iget-object v0, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 2004
    .local v0, "savedLastPos":I
    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_4
    if-lt v1, v9, :cond_6

    .line 2005
    invoke-virtual {v6, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2006
    .local v2, "v":Landroid/view/View;
    iget-object v3, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2004
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 2008
    .end local v1    # "i":I
    :cond_6
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 2009
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 2011
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2012
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v1, :cond_8

    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v1, v0, :cond_8

    .line 2015
    :goto_5
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    iget v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v1, v2, :cond_8

    .line 2016
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_5

    .line 2021
    :cond_7
    :goto_6
    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 2022
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    if-ge v1, v0, :cond_8

    goto :goto_6

    .line 2025
    .end local v0    # "savedLastPos":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2026
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2027
    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3142
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eq p1, v0, :cond_1

    .line 3143
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 3144
    if-eqz p1, :cond_1

    .line 3145
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3146
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 3147
    return v0

    .line 3145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3152
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private focusToViewInLayout(ZZII)V
    .locals 5
    .param p1, "hadFocus"    # Z
    .param p2, "alignToView"    # Z
    .param p3, "extraDelta"    # I
    .param p4, "extraDeltaSecondary"    # I

    .line 2043
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2044
    .local v0, "focusView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2045
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    .line 2047
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2048
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 2049
    :cond_1
    if-nez p1, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2050
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2051
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    .line 2053
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 2054
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2055
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2056
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 2057
    goto :goto_1

    .line 2053
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2062
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2063
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    .line 2066
    :cond_5
    :goto_2
    return-void
.end method

.method private forceRequestLayout()V
    .locals 2

    .line 1426
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1427
    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 979
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 942
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 943
    return v0

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 946
    .local v1, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 950
    :cond_1
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v0

    return v0

    .line 948
    :cond_2
    :goto_0
    return v0
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "scrollPrimary"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "childView"    # Landroid/view/View;

    .line 2915
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 2916
    .local v0, "subindex":I
    if-eqz v0, :cond_0

    .line 2917
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2918
    .local v1, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 2920
    .end local v1    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    :cond_0
    return p1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .line 3068
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    .line 3069
    .local v0, "scrollPrimary":I
    if-eqz p2, :cond_0

    .line 3070
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 3072
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v1

    .line 3077
    .local v1, "scrollSecondary":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    .line 3078
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3083
    :cond_1
    aput v3, p3, v3

    .line 3084
    aput v3, p3, v2

    .line 3086
    return v3

    .line 3079
    :cond_2
    :goto_0
    aput v0, p3, v3

    .line 3080
    aput v1, p3, v2

    .line 3081
    return v2
.end method

.method private getMovement(I)I
    .locals 8
    .param p1, "direction"    # I

    .line 3503
    const/16 v0, 0x11

    .line 3505
    .local v0, "movement":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/16 v2, 0x82

    const/16 v3, 0x42

    const/16 v4, 0x21

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-nez v1, :cond_6

    .line 3506
    const/4 v1, 0x0

    const/high16 v7, 0x40000

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 3517
    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    .line 3511
    :cond_1
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-nez v2, :cond_2

    move v1, v6

    nop

    :cond_2
    move v0, v1

    .line 3512
    goto :goto_1

    .line 3514
    :cond_3
    const/4 v0, 0x2

    .line 3515
    goto :goto_1

    .line 3508
    :cond_4
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v6

    :goto_0
    move v0, v1

    .line 3509
    nop

    .line 3518
    :goto_1
    goto :goto_3

    .line 3520
    :cond_6
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v6, :cond_d

    .line 3521
    const/4 v1, 0x2

    const/4 v6, 0x3

    const/high16 v7, 0x80000

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_3

    .line 3532
    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    .line 3526
    :cond_8
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-nez v2, :cond_9

    move v1, v6

    nop

    :cond_9
    move v0, v1

    .line 3527
    goto :goto_3

    .line 3529
    :cond_a
    const/4 v0, 0x0

    .line 3530
    goto :goto_3

    .line 3523
    :cond_b
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    move v1, v6

    :goto_2
    move v0, v1

    .line 3524
    nop

    .line 3537
    :cond_d
    :goto_3
    return v0
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltas"    # [I

    move-object v0, p0

    .line 2993
    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v1

    .line 2994
    .local v1, "pos":I
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v2

    .line 2995
    .local v2, "viewMin":I
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v3

    .line 2998
    .local v3, "viewMax":I
    const/4 v4, 0x0

    .line 2999
    .local v4, "firstView":Landroid/view/View;
    const/4 v5, 0x0

    .line 3000
    .local v5, "lastView":Landroid/view/View;
    iget-object v6, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v6

    .line 3001
    .local v6, "paddingMin":I
    iget-object v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v7

    .line 3002
    .local v7, "clientSize":I
    iget-object v8, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v8, v1}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v8

    .line 3003
    .local v8, "row":I
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-ge v2, v6, :cond_1

    .line 3005
    move-object/from16 v4, p1

    .line 3006
    iget v12, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v12, v11, :cond_6

    .line 3009
    :goto_0
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3010
    iget-object v12, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3011
    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v13, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    aget-object v12, v12, v8

    .line 3012
    .local v12, "positions":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v12, v10}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 3013
    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v13

    sub-int v13, v3, v13

    if-le v13, v7, :cond_0

    .line 3014
    invoke-virtual {v12}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v13

    if-le v13, v11, :cond_6

    .line 3015
    invoke-virtual {v12, v11}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 3019
    .end local v12    # "positions":Landroid/support/v4/util/CircularIntArray;
    :cond_0
    goto :goto_0

    .line 3021
    :cond_1
    add-int v12, v7, v6

    if-le v3, v12, :cond_6

    .line 3023
    iget v12, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v12, v11, :cond_5

    .line 3025
    move-object/from16 v11, p1

    .line 3027
    .end local v4    # "firstView":Landroid/view/View;
    .local v11, "firstView":Landroid/view/View;
    :cond_2
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v12, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3028
    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v12

    invoke-virtual {v4, v1, v12}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v4

    aget-object v4, v4, v8

    .line 3029
    .local v4, "positions":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v4}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v4, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 3030
    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v2

    if-le v12, v7, :cond_3

    .line 3031
    const/4 v5, 0x0

    .line 3032
    goto :goto_1

    .line 3034
    .end local v4    # "positions":Landroid/support/v4/util/CircularIntArray;
    :cond_3
    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3035
    :goto_1
    if-eqz v5, :cond_4

    .line 3037
    const/4 v4, 0x0

    .end local v11    # "firstView":Landroid/view/View;
    .local v4, "firstView":Landroid/view/View;
    goto :goto_2

    .line 3043
    .end local v4    # "firstView":Landroid/view/View;
    .restart local v11    # "firstView":Landroid/view/View;
    :cond_4
    move-object v4, v11

    goto :goto_2

    .line 3040
    .end local v11    # "firstView":Landroid/view/View;
    .restart local v4    # "firstView":Landroid/view/View;
    :cond_5
    move-object/from16 v5, p1

    .line 3043
    :cond_6
    :goto_2
    const/4 v11, 0x0

    .line 3044
    .local v11, "scrollPrimary":I
    const/4 v12, 0x0

    .line 3045
    .local v12, "scrollSecondary":I
    if-eqz v4, :cond_7

    .line 3046
    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v13

    sub-int v11, v13, v6

    goto :goto_3

    .line 3047
    :cond_7
    if-eqz v5, :cond_8

    .line 3048
    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v13

    add-int v14, v6, v7

    sub-int v11, v13, v14

    .line 3051
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 3052
    move-object v13, v4

    .local v13, "secondaryAlignedView":Landroid/view/View;
    :goto_4
    goto :goto_5

    .line 3053
    .end local v13    # "secondaryAlignedView":Landroid/view/View;
    :cond_9
    if-eqz v5, :cond_a

    .line 3054
    move-object v13, v5

    goto :goto_4

    .line 3056
    :cond_a
    move-object/from16 v13, p1

    .line 3058
    .restart local v13    # "secondaryAlignedView":Landroid/view/View;
    :goto_5
    invoke-direct {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v12

    .line 3059
    if-nez v11, :cond_c

    if-eqz v12, :cond_b

    goto :goto_6

    .line 3064
    :cond_b
    return v10

    .line 3060
    :cond_c
    :goto_6
    aput v11, p2, v10

    .line 3061
    aput v12, p2, v9

    .line 3062
    return v9
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2906
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v0

    return v0
.end method

.method private getRowSizeSecondary(I)I
    .locals 1
    .param p1, "rowIndex"    # I

    .line 1245
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    .line 1246
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    .line 1248
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_1

    .line 1249
    const/4 v0, 0x0

    return v0

    .line 1251
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2924
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v0

    .line 2925
    .local v0, "viewCenterSecondary":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    return v1
.end method

.method private getSizeSecondary()I
    .locals 3

    .line 1271
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    .line 1272
    .local v0, "rightmostIndex":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1149
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1163
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1167
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1168
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1173
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3455
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 3456
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3457
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 3458
    .local v1, "result":Z
    nop

    .line 3461
    return v1

    .line 3463
    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3472
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 3473
    .local v0, "count":I
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 3474
    const/4 v1, 0x0

    .line 3475
    .local v1, "index":I
    const/4 v2, 0x1

    .line 3476
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 3478
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3479
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 3480
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 3482
    .restart local v3    # "end":I
    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v4

    .line 3483
    .local v4, "left":I
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v5

    add-int/2addr v5, v4

    .line 3484
    .local v5, "right":I
    move v6, v1

    .local v6, "i":I
    :goto_1
    if-eq v6, v3, :cond_2

    .line 3485
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3486
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 3487
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v4, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v5, :cond_1

    .line 3488
    invoke-virtual {v7, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3489
    const/4 v8, 0x1

    return v8

    .line 3484
    .end local v7    # "child":Landroid/view/View;
    :cond_1
    add-int/2addr v6, v2

    goto :goto_1

    .line 3494
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method private initScrollController()V
    .locals 3

    .line 2589
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->reset()V

    .line 2590
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2591
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2592
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2593
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2594
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2595
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2601
    return-void
.end method

.method private layoutInit()Z
    .locals 6

    .line 1206
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 1207
    .local v0, "newItemCount":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1208
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1209
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1210
    :cond_0
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v3, v0, :cond_1

    .line 1211
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1212
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1213
    :cond_1
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v3, v1, :cond_2

    if-lez v0, :cond_2

    .line 1215
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1216
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1218
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 1219
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v4, :cond_3

    .line 1220
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    .line 1221
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1222
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    .line 1223
    return v3

    .line 1225
    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1227
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    const/high16 v4, 0x40000

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v5

    if-ne v1, v5, :cond_5

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 1228
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v5

    if-eq v1, v5, :cond_7

    .line 1229
    :cond_5
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v1}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 1230
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v1, v5}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    .line 1231
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    .line 1233
    :cond_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    .line 1234
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1235
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    .line 1236
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1237
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 1238
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1239
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    .line 1240
    return v2
.end method

.method private leaveContext()V
    .locals 1

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1194
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1196
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1197
    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "measuredDimension"    # [I

    .line 1287
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1288
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1290
    .local v1, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1291
    iget v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 1292
    .local v2, "widthUsed":I
    iget v3, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 1294
    .local v3, "heightUsed":I
    nop

    .line 1295
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1294
    invoke-static {p2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1296
    .local v4, "childWidthSpec":I
    nop

    .line 1297
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget v6, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1296
    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1298
    .local v5, "childHeightSpec":I
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1300
    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v7

    aput v7, p4, v6

    .line 1301
    const/4 v6, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v7

    aput v7, p4, v6

    .line 1302
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 1304
    .end local v1    # "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "widthUsed":I
    .end local v3    # "heightUsed":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "childHeightSpec":I
    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 4
    .param p1, "increment"    # I

    .line 2364
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2365
    .local v0, "childCount":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2366
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 2367
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2366
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 2370
    .end local v2    # "i":I
    :cond_0
    nop

    .restart local v2    # "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v0, :cond_1

    .line 2371
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2370
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2374
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3
    .param p1, "increment"    # I

    .line 2351
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2352
    .local v0, "childCount":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2353
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 2354
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2353
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 2357
    .end local v2    # "i":I
    :cond_0
    nop

    .restart local v2    # "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v0, :cond_1

    .line 2358
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2357
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2361
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 1

    .line 1929
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .locals 3

    .line 1939
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    .line 1942
    return-void
.end method

.method private processPendingMovement(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .line 2778
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    :goto_0
    return-void

    .line 2781
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v0, :cond_4

    .line 2783
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    .line 2784
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 v4, 0x0

    if-le v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-direct {v0, p0, v2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V

    .line 2786
    .local v0, "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2787
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2788
    .end local v0    # "linearSmoothScroller":Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
    goto :goto_3

    .line 2789
    :cond_4
    if-eqz p1, :cond_5

    .line 2790
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    .line 2792
    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    .line 2795
    :goto_3
    return-void
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 16
    .param p1, "measure"    # Z

    move-object/from16 v0, p0

    .line 1307
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/4 v2, 0x0

    if-nez v1, :cond_15

    iget-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1312
    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;

    move-result-object v1

    .line 1313
    .local v1, "rows":[Landroid/support/v4/util/CircularIntArray;
    :goto_0
    const/4 v4, 0x0

    .line 1314
    .local v4, "changed":Z
    const/4 v5, -0x1

    .line 1316
    .local v5, "scrapeChildSize":I
    move v6, v5

    move v5, v4

    move v4, v2

    .local v4, "rowIndex":I
    .local v5, "changed":Z
    .local v6, "scrapeChildSize":I
    :goto_1
    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ge v4, v7, :cond_14

    .line 1317
    if-nez v1, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    aget-object v7, v1, v4

    .line 1318
    .local v7, "row":Landroid/support/v4/util/CircularIntArray;
    :goto_2
    if-nez v7, :cond_3

    move v8, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v8

    .line 1319
    .local v8, "rowItemsPairCount":I
    :goto_3
    const/4 v9, -0x1

    .line 1320
    .local v9, "rowSize":I
    move v10, v9

    move v9, v2

    .local v9, "rowItemPairIndex":I
    .local v10, "rowSize":I
    :goto_4
    if-ge v9, v8, :cond_9

    .line 1322
    invoke-virtual {v7, v9}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    .line 1323
    .local v11, "rowIndexStart":I
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    .line 1324
    .local v12, "rowIndexEnd":I
    move v13, v10

    move v10, v11

    .local v10, "i":I
    .local v13, "rowSize":I
    :goto_5
    if-gt v10, v12, :cond_8

    .line 1325
    iget v14, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v14, v10, v14

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v14

    .line 1326
    .local v14, "view":Landroid/view/View;
    if-nez v14, :cond_4

    .line 1327
    goto :goto_7

    .line 1329
    :cond_4
    if-eqz p1, :cond_5

    .line 1330
    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1332
    :cond_5
    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_6

    .line 1333
    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v3

    goto :goto_6

    .line 1334
    :cond_6
    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v3

    .line 1335
    .local v3, "secondarySize":I
    :goto_6
    if-le v3, v13, :cond_7

    .line 1336
    move v13, v3

    .line 1324
    .end local v3    # "secondarySize":I
    .end local v14    # "view":Landroid/view/View;
    :cond_7
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1321
    .end local v10    # "i":I
    .end local v11    # "rowIndexStart":I
    .end local v12    # "rowIndexEnd":I
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 1320
    move v10, v13

    goto :goto_4

    .line 1341
    .end local v9    # "rowItemPairIndex":I
    .end local v13    # "rowSize":I
    .local v10, "rowSize":I
    :cond_9
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    .line 1342
    .local v3, "itemCount":I
    iget-object v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v9

    if-nez v9, :cond_11

    if-eqz p1, :cond_11

    if-gez v10, :cond_11

    if-lez v3, :cond_11

    .line 1343
    if-gez v6, :cond_10

    .line 1345
    iget v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1346
    .local v9, "position":I
    if-gez v9, :cond_a

    .line 1347
    const/4 v9, 0x0

    goto :goto_8

    .line 1348
    :cond_a
    if-lt v9, v3, :cond_b

    .line 1349
    add-int/lit8 v9, v3, -0x1

    .line 1351
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    const/4 v12, 0x1

    if-lez v11, :cond_e

    .line 1352
    iget-object v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 1353
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1352
    invoke-virtual {v11, v13}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 1353
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    .line 1354
    .local v11, "firstPos":I
    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1354
    invoke-virtual {v13, v14}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 1355
    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v13

    .line 1358
    .local v13, "lastPos":I
    if-lt v9, v11, :cond_e

    if-gt v9, v13, :cond_e

    .line 1359
    sub-int v14, v9, v11

    sub-int v12, v13, v9

    if-gt v14, v12, :cond_c

    add-int/lit8 v12, v11, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v12, v13, 0x1

    :goto_9
    move v9, v12

    .line 1363
    if-gez v9, :cond_d

    add-int/lit8 v12, v3, -0x1

    if-ge v13, v12, :cond_d

    .line 1364
    add-int/lit8 v9, v13, 0x1

    goto :goto_a

    .line 1365
    :cond_d
    if-lt v9, v3, :cond_e

    if-lez v11, :cond_e

    .line 1366
    add-int/lit8 v9, v11, -0x1

    .line 1370
    .end local v11    # "firstPos":I
    .end local v13    # "lastPos":I
    :cond_e
    :goto_a
    if-ltz v9, :cond_10

    if-ge v9, v3, :cond_10

    .line 1371
    nop

    .line 1372
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1373
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 1371
    invoke-direct {v0, v9, v11, v12, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1375
    iget v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v11, :cond_f

    iget-object v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    goto :goto_b

    :cond_f
    iget-object v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    aget v11, v11, v2

    :goto_b
    move v6, v11

    .line 1383
    .end local v9    # "position":I
    :cond_10
    if-ltz v6, :cond_11

    .line 1384
    move v10, v6

    .line 1387
    :cond_11
    if-gez v10, :cond_12

    .line 1388
    const/4 v10, 0x0

    .line 1390
    :cond_12
    iget-object v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v9, v9, v4

    if-eq v9, v10, :cond_13

    .line 1395
    iget-object v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aput v10, v9, v4

    .line 1396
    const/4 v3, 0x1

    .line 1316
    .end local v5    # "changed":Z
    .end local v7    # "row":Landroid/support/v4/util/CircularIntArray;
    .end local v8    # "rowItemsPairCount":I
    .end local v10    # "rowSize":I
    .local v3, "changed":Z
    move v5, v3

    .end local v3    # "changed":Z
    .restart local v5    # "changed":Z
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1401
    .end local v4    # "rowIndex":I
    :cond_14
    return v5

    .line 1308
    .end local v1    # "rows":[Landroid/support/v4/util/CircularIntArray;
    .end local v5    # "changed":Z
    .end local v6    # "scrapeChildSize":I
    :cond_15
    :goto_c
    return v2
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    .line 1824
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 1825
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    .line 1828
    :cond_1
    return-void
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    .line 1831
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 1832
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    .line 1835
    :cond_1
    return-void
.end method

.method private saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1180
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_1

    .line 1181
    :cond_0
    const-string v0, "GridLayoutManager"

    const-string v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1184
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1186
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1187
    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 6
    .param p1, "da"    # I

    .line 2422
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v1, :cond_2

    .line 2423
    if-lez p1, :cond_1

    .line 2424
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2425
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v0

    .line 2426
    .local v0, "maxScroll":I
    if-le p1, v0, :cond_0

    .line 2427
    move p1, v0

    .line 2429
    .end local v0    # "maxScroll":I
    :cond_0
    goto :goto_0

    .line 2430
    :cond_1
    if-gez p1, :cond_2

    .line 2431
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2432
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v0

    .line 2433
    .local v0, "minScroll":I
    if-ge p1, v0, :cond_2

    .line 2434
    move p1, v0

    .line 2439
    .end local v0    # "minScroll":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 2441
    return v0

    .line 2443
    :cond_3
    neg-int v2, p1

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2444
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x3

    if-ne v2, v1, :cond_4

    .line 2445
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2447
    return p1

    .line 2450
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2453
    .local v2, "childCount":I
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    if-lez p1, :cond_6

    goto :goto_1

    :cond_5
    if-gez p1, :cond_6

    .line 2454
    :goto_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    goto :goto_2

    .line 2456
    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2458
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v0

    .line 2459
    .local v3, "updated":Z
    :goto_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2462
    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    if-lez p1, :cond_9

    goto :goto_4

    :cond_8
    if-gez p1, :cond_9

    .line 2463
    :goto_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    goto :goto_5

    .line 2465
    :cond_9
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2468
    :goto_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-ge v4, v2, :cond_a

    move v0, v1

    nop

    :cond_a
    or-int/2addr v0, v3

    .line 2469
    .end local v3    # "updated":Z
    .local v0, "updated":Z
    if-eqz v0, :cond_b

    .line 2470
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2473
    :cond_b
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2474
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2476
    return p1
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1
    .param p1, "dy"    # I

    .line 2481
    if-nez p1, :cond_0

    .line 2482
    const/4 v0, 0x0

    return v0

    .line 2484
    :cond_0
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2485
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2486
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2487
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2488
    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 3
    .param p1, "scrollPrimary"    # I
    .param p2, "scrollSecondary"    # I
    .param p3, "smooth"    # Z

    .line 3090
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3091
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 3092
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    goto :goto_1

    .line 3096
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 3097
    move v0, p1

    .line 3098
    .local v0, "scrollX":I
    move v1, p2

    .local v1, "scrollY":I
    goto :goto_0

    .line 3100
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_1
    move v0, p2

    .line 3101
    .restart local v0    # "scrollX":I
    move v1, p1

    .line 3103
    .restart local v1    # "scrollY":I
    :goto_0
    if-eqz p3, :cond_2

    .line 3104
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_1

    .line 3106
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->scrollBy(II)V

    .line 3107
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 3110
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :goto_1
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z

    .line 2941
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    .line 2942
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "smooth"    # Z
    .param p4, "extraDelta"    # I
    .param p5, "extraDeltaSecondary"    # I

    .line 2948
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 2949
    return-void

    .line 2951
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2952
    .local v0, "newFocusPosition":I
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2953
    .local v1, "newSubFocusPosition":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    .line 2954
    :cond_1
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2955
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2956
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2957
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x3

    if-eq v2, v3, :cond_2

    .line 2958
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2960
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2961
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    .line 2964
    :cond_3
    if-nez p1, :cond_4

    .line 2965
    return-void

    .line 2967
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2970
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2972
    :cond_5
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v5, 0x20000

    and-int/2addr v2, v5

    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 2973
    return-void

    .line 2975
    :cond_6
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_8

    .line 2977
    :cond_7
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v4

    add-int/2addr v2, p4

    sget-object v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v3, v4, v3

    add-int/2addr v3, p5

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    .line 2979
    :cond_8
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1787
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1788
    .local v0, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1790
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1791
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1794
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1795
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    .line 1796
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1798
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1801
    :goto_0
    return-void
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 4

    .line 1408
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    .line 1409
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    nop

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1410
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 1412
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1414
    :cond_1
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    .line 2604
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2605
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2606
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2607
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2608
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    .line 2614
    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .locals 3

    .line 2582
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    .line 2583
    .local v0, "secondAxis":Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    .line 2584
    .local v1, "minEdge":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v2

    add-int/2addr v2, v1

    .line 2585
    .local v2, "maxEdge":I
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2586
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1049
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3436
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1056
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 2495
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2496
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 2497
    .local v0, "da":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 2502
    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    .line 2505
    .local v1, "fromLimit":I
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v1, v0, p4}, Landroid/support/v17/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    .end local v0    # "da":I
    .end local v1    # "fromLimit":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2508
    nop

    .line 2509
    return-void

    .line 2507
    .restart local v0    # "da":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2499
    return-void

    .line 2507
    .end local v0    # "da":I
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    throw v0
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 2514
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v0, v0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 2515
    .local v0, "numToPrefetch":I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2517
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2519
    .local v1, "initialPos":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    add-int v4, v1, v0

    if-ge v3, v4, :cond_0

    .line 2520
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2519
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2523
    .end local v1    # "initialPos":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 17

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    return-void

    .line 988
    :cond_0
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 989
    .local v1, "view":Landroid/view/View;
    :goto_0
    const/4 v10, 0x0

    if-eqz v1, :cond_4

    .line 990
    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 991
    .local v2, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v3, :cond_3

    .line 992
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v2, :cond_2

    const-wide/16 v8, -0x1

    goto :goto_1

    .line 993
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    .line 992
    :goto_1
    move-object v6, v1

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 995
    :cond_3
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 996
    .end local v2    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_2

    .line 997
    :cond_4
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v4, :cond_5

    .line 998
    iget-object v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v12, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const-wide/16 v15, -0x1

    invoke-interface/range {v11 .. v16}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1000
    :cond_5
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v4, v2, v3, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 1013
    :goto_2
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 1015
    .local v2, "childCount":I
    nop

    .local v10, "i":I
    :goto_3
    move v3, v10

    .end local v10    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_7

    .line 1016
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1017
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    .line 1018
    goto :goto_4

    .line 1015
    :cond_6
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .restart local v10    # "i":I
    goto :goto_3

    .line 1022
    .end local v2    # "childCount":I
    .end local v10    # "i":I
    :cond_7
    :goto_4
    return-void
.end method

.method fillScrapViewsInPostLayout()V
    .locals 8

    .line 2105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    .line 2106
    .local v0, "scrapList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2107
    .local v1, "scrapSize":I
    if-nez v1, :cond_0

    .line 2108
    return-void

    .line 2111
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 2112
    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v2, v2

    .line 2113
    .local v2, "length":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2114
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2116
    :cond_3
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    .line 2118
    .end local v2    # "length":I
    :cond_4
    const/4 v2, 0x0

    .line 2119
    .local v2, "totalItems":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "totalItems":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 2120
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 2121
    .local v5, "pos":I
    if-ltz v5, :cond_5

    .line 2122
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v7, v4, 0x1

    .local v7, "totalItems":I
    aput v5, v6, v4

    .line 2119
    .end local v4    # "totalItems":I
    .end local v5    # "pos":I
    move v4, v7

    .end local v7    # "totalItems":I
    .restart local v4    # "totalItems":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2126
    .end local v2    # "i":I
    :cond_6
    if-lez v4, :cond_7

    .line 2127
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 2128
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v17/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    .line 2131
    :cond_7
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2132
    return-void
.end method

.method fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 917
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 918
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 921
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 924
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 928
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 932
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    .line 931
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 935
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1061
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1067
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1072
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    .line 1074
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    .line 1075
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 1076
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1077
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1079
    :cond_2
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "childCount"    # I
    .param p3, "i"    # I

    .line 3541
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 3542
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3543
    return p3

    .line 3545
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3548
    .local v1, "focusIndex":I
    if-ge p3, v1, :cond_1

    .line 3549
    return p3

    .line 3550
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_2

    .line 3551
    add-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    .line 3553
    :cond_2
    return v1
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 3690
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3691
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3693
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1121
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 1122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1127
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1129
    .local v0, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1130
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 1131
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 1132
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 1133
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1105
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1281
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1282
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1277
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1115
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1110
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 1583
    .local p2, "facetClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    const/4 v0, 0x0

    .line 1584
    .local v0, "facet":Ljava/lang/Object;, "TE;"
    instance-of v1, p1, Landroid/support/v17/leanback/widget/FacetProvider;

    if-eqz v1, :cond_0

    .line 1585
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FacetProvider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1587
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v1, :cond_1

    .line 1588
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;

    move-result-object v1

    .line 1589
    .local v1, "p":Landroid/support/v17/leanback/widget/FacetProvider;
    if-eqz v1, :cond_1

    .line 1590
    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1593
    .end local v1    # "p":Landroid/support/v17/leanback/widget/FacetProvider;
    :cond_1
    return-object v0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 3681
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3682
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    .line 3684
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .locals 4
    .param p1, "rowIndex"    # I

    .line 1255
    const/4 v0, 0x0

    .line 1258
    .local v0, "start":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1259
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-le v1, p1, :cond_1

    .line 1260
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1259
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1263
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 1264
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1267
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "deltas"    # [I

    .line 2982
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 2985
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    .line 2988
    :pswitch_0
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSelection()I
    .locals 1

    .line 2646
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSlideOutDistance()I
    .locals 3

    .line 1871
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1872
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 1873
    .local v0, "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1874
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1875
    .local v1, "top":I
    if-gez v1, :cond_0

    .line 1877
    add-int/2addr v0, v1

    .line 1879
    .end local v1    # "top":I
    :cond_0
    goto :goto_0

    .line 1881
    .end local v0    # "distance":I
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 1882
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    .line 1883
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1884
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1885
    .local v1, "start":I
    if-le v1, v0, :cond_2

    .line 1887
    move v0, v1

    .line 1889
    .end local v1    # "start":I
    :cond_2
    goto :goto_0

    .line 1891
    .end local v0    # "distance":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1892
    .restart local v0    # "distance":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1893
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1894
    .restart local v1    # "start":I
    if-gez v1, :cond_4

    .line 1896
    add-int/2addr v0, v1

    .line 1901
    .end local v1    # "start":I
    :cond_4
    :goto_0
    return v0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childView"    # Landroid/view/View;

    .line 954
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 957
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 958
    .local v1, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v2

    .line 959
    .local v2, "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    if-eqz v2, :cond_3

    .line 960
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v3

    .line 961
    .local v3, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 962
    :goto_0
    if-eq p2, p1, :cond_3

    .line 963
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    .line 964
    .local v4, "id":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 965
    move v6, v5

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 966
    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 967
    return v6

    .line 965
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 971
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object p2, v6

    check-cast p2, Landroid/view/View;

    .line 972
    .end local v4    # "id":I
    goto :goto_0

    .line 975
    .end local v3    # "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    :cond_3
    return v0

    .line 955
    .end local v1    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    :cond_4
    :goto_2
    return v0
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 864
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 1084
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1140
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1136
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1144
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1145
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0
.end method

.method gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3441
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_0

    .line 3444
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 3448
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .locals 3

    .line 3421
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3422
    .local v0, "count":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method hasCreatedLastItem()Z
    .locals 3

    .line 3416
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    .line 3417
    .local v0, "count":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected hasDoneFirstLayout()Z
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 1

    .line 911
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isItemFullyVisible(I)Z
    .locals 4
    .param p1, "pos"    # I

    .line 3426
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3427
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3428
    return v1

    .line 3430
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3431
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 3432
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isScrollEnabled()Z
    .locals 2

    .line 3138
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 17
    .param p1, "rowIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "startSecondary"    # I

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1742
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 1743
    :cond_0
    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v1

    .line 1744
    .local v1, "sizeSecondary":I
    :goto_0
    iget v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v2, :cond_1

    .line 1745
    iget v2, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1747
    .end local v1    # "sizeSecondary":I
    .local v8, "sizeSecondary":I
    :cond_1
    move v8, v1

    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v9, v1, 0x70

    .line 1748
    .local v9, "verticalGravity":I
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0xc0000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    const v3, 0x800007

    and-int/2addr v1, v3

    .line 1749
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    :goto_1
    move v10, v1

    .line 1752
    .local v10, "horizontalGravity":I
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3

    const/16 v1, 0x30

    if-eq v9, v1, :cond_a

    :cond_3
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    if-ne v10, v1, :cond_4

    goto :goto_3

    .line 1755
    :cond_4
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_5

    const/16 v1, 0x50

    if-eq v9, v1, :cond_6

    :cond_5
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_7

    const/4 v1, 0x5

    if-ne v10, v1, :cond_7

    .line 1757
    :cond_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v1

    sub-int/2addr v1, v8

    add-int v0, p5, v1

    .line 1763
    .end local p5    # "startSecondary":I
    .local v0, "startSecondary":I
    .local v11, "startSecondary":I
    :goto_2
    move v11, v0

    goto :goto_4

    .line 1758
    .end local v0    # "startSecondary":I
    .end local v11    # "startSecondary":I
    .restart local p5    # "startSecondary":I
    :cond_7
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_8

    const/16 v1, 0x10

    if-eq v9, v1, :cond_9

    :cond_8
    iget v1, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v2, :cond_a

    if-ne v10, v2, :cond_a

    .line 1760
    :cond_9
    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int v0, p5, v1

    goto :goto_2

    .line 1763
    :cond_a
    :goto_3
    move/from16 v11, p5

    .end local p5    # "startSecondary":I
    .restart local v11    # "startSecondary":I
    :goto_4
    iget v0, v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_b

    .line 1764
    move/from16 v0, p3

    .line 1765
    .local v0, "left":I
    move v1, v11

    .line 1766
    .local v1, "top":I
    move/from16 v2, p4

    .line 1767
    .local v2, "right":I
    add-int v3, v11, v8

    .line 1772
    .local v3, "bottom":I
    move v12, v0

    move v13, v1

    move v14, v3

    goto :goto_5

    .line 1769
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_b
    move/from16 v0, p3

    .line 1770
    .local v0, "top":I
    move v1, v11

    .line 1771
    .local v1, "left":I
    move/from16 v2, p4

    .line 1772
    .local v2, "bottom":I
    add-int v3, v11, v8

    move v13, v0

    move v12, v1

    move v14, v2

    move v2, v3

    .end local v0    # "top":I
    .end local v1    # "left":I
    .local v2, "right":I
    .local v12, "left":I
    .local v13, "top":I
    .local v14, "bottom":I
    :goto_5
    move v15, v2

    .line 1774
    .end local v2    # "right":I
    .local v15, "right":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1775
    .local v5, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v0, v6

    move-object v1, v7

    move v2, v12

    move v3, v13

    move v4, v15

    move/from16 v16, v8

    move-object v8, v5

    move v5, v14

    .end local v5    # "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .local v8, "params":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .local v16, "sizeSecondary":I
    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1779
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {v6, v7, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1780
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v12, v0

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v13, v1

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v15

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1782
    invoke-direct {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    .line 1784
    return-void
.end method

.method measureChild(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 1547
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1548
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1549
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 1550
    .local v1, "widthUsed":I
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1552
    .local v2, "heightUsed":I
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    .line 1554
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 1555
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1558
    .local v3, "secondarySpec":I
    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_1

    .line 1559
    nop

    .line 1560
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    .line 1559
    invoke-static {v4, v1, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1561
    .local v4, "widthSpec":I
    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .local v5, "heightSpec":I
    goto :goto_1

    .line 1563
    .end local v4    # "widthSpec":I
    .end local v5    # "heightSpec":I
    :cond_1
    nop

    .line 1564
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    .line 1563
    invoke-static {v4, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1565
    .restart local v5    # "heightSpec":I
    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1567
    .restart local v4    # "widthSpec":I
    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1577
    return-void
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 3561
    if-eqz p1, :cond_0

    .line 3562
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 3563
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3564
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3565
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 3567
    :cond_0
    instance-of v0, p2, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1

    .line 3568
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    goto :goto_0

    .line 3570
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    .line 3572
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3573
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 24
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 3275
    move/from16 v3, p4

    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 3276
    return v5

    .line 3285
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3286
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    .line 3288
    return v5

    .line 3290
    :cond_1
    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v4

    .line 3291
    .local v4, "movement":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v6

    .line 3292
    .local v6, "focused":Landroid/view/View;
    invoke-direct {v0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v7

    .line 3293
    .local v7, "focusedIndex":I
    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v8

    .line 3296
    .local v8, "focusedPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 3297
    :cond_2
    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 3299
    .local v10, "immediateFocusedChild":Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_3

    .line 3300
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3302
    :cond_3
    iget-object v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v11, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v11

    if-nez v11, :cond_4

    .line 3304
    move-object/from16 v20, v6

    move/from16 v21, v7

    goto/16 :goto_c

    .line 3306
    :cond_4
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_6

    :cond_5
    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v13

    if-gt v13, v5, :cond_6

    .line 3308
    return v5

    .line 3311
    :cond_6
    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v13, :cond_7

    if-eqz v10, :cond_7

    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3312
    invoke-virtual {v13, v8}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v13

    iget v13, v13, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    goto :goto_1

    :cond_7
    move v13, v9

    .line 3313
    .local v13, "focusedRow":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3314
    .local v14, "focusableCount":I
    if-eq v4, v5, :cond_9

    if-ne v4, v12, :cond_8

    goto :goto_2

    :cond_8
    move v15, v9

    goto :goto_3

    :cond_9
    :goto_2
    move v15, v5

    .line 3315
    .local v15, "inc":I
    :goto_3
    const/16 v16, 0x0

    if-lez v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_a
    move/from16 v17, v16

    :goto_4
    move/from16 v18, v17

    .line 3317
    .local v18, "loop_end":I
    if-ne v7, v9, :cond_c

    .line 3318
    if-lez v15, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v9

    add-int/lit8 v16, v9, -0x1

    :goto_5
    move/from16 v9, v16

    .local v9, "loop_start":I
    goto :goto_6

    .line 3320
    .end local v9    # "loop_start":I
    :cond_c
    add-int v9, v7, v15

    .line 3322
    .restart local v9    # "loop_start":I
    :goto_6
    move/from16 v16, v9

    .local v16, "i":I
    :goto_7
    move/from16 v19, v16

    .end local v16    # "i":I
    .local v19, "i":I
    if-lez v15, :cond_d

    move/from16 v11, v18

    move/from16 v12, v19

    if-gt v12, v11, :cond_1b

    .end local v18    # "loop_end":I
    .end local v19    # "i":I
    .local v11, "loop_end":I
    .local v12, "i":I
    goto :goto_8

    .end local v11    # "loop_end":I
    .end local v12    # "i":I
    .restart local v18    # "loop_end":I
    .restart local v19    # "i":I
    :cond_d
    move/from16 v11, v18

    move/from16 v12, v19

    .end local v18    # "loop_end":I
    .end local v19    # "i":I
    .restart local v11    # "loop_end":I
    .restart local v12    # "i":I
    if-lt v12, v11, :cond_1b

    .line 3323
    :goto_8
    invoke-virtual {v0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3324
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_f

    .line 3325
    nop

    .line 3322
    move-object/from16 v20, v6

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .end local v9    # "loop_start":I
    .local v20, "focused":Landroid/view/View;
    .local v21, "focusedIndex":I
    .local v22, "loop_start":I
    :cond_e
    move/from16 v21, v7

    :goto_9
    move/from16 v22, v9

    goto/16 :goto_a

    .line 3329
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    .end local v22    # "loop_start":I
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "focused":Landroid/view/View;
    .restart local v7    # "focusedIndex":I
    .restart local v9    # "loop_start":I
    :cond_f
    if-nez v10, :cond_10

    .line 3330
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3331
    move-object/from16 v20, v6

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .end local v6    # "focused":Landroid/view/View;
    .restart local v20    # "focused":Landroid/view/View;
    if-le v6, v14, :cond_e

    .line 3332
    goto/16 :goto_b

    .line 3336
    .end local v20    # "focused":Landroid/view/View;
    .restart local v6    # "focused":Landroid/view/View;
    :cond_10
    move-object/from16 v20, v6

    .end local v6    # "focused":Landroid/view/View;
    .restart local v20    # "focused":Landroid/view/View;
    invoke-direct {v0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v6

    .line 3337
    .local v6, "position":I
    move/from16 v21, v7

    iget-object v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .end local v7    # "focusedIndex":I
    .restart local v21    # "focusedIndex":I
    invoke-virtual {v7, v6}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v7

    .line 3338
    .local v7, "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v7, :cond_11

    .line 3339
    goto :goto_9

    .line 3341
    :cond_11
    move/from16 v22, v9

    const/4 v9, 0x1

    if-ne v4, v9, :cond_12

    .line 3343
    .end local v9    # "loop_start":I
    .restart local v22    # "loop_start":I
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v9, v13, :cond_1a

    if-le v6, v8, :cond_1a

    .line 3344
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3345
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_1a

    .line 3346
    goto :goto_b

    .line 3349
    :cond_12
    if-nez v4, :cond_13

    .line 3351
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v9, v13, :cond_1a

    if-ge v6, v8, :cond_1a

    .line 3352
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3353
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_1a

    .line 3354
    goto :goto_b

    .line 3357
    :cond_13
    const/4 v9, 0x3

    if-ne v4, v9, :cond_16

    .line 3359
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v9, v13, :cond_14

    .line 3360
    goto :goto_a

    .line 3361
    :cond_14
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ge v9, v13, :cond_15

    .line 3362
    goto :goto_b

    .line 3364
    :cond_15
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_a

    .line 3365
    :cond_16
    const/4 v9, 0x2

    if-ne v4, v9, :cond_1a

    .line 3367
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v9, v13, :cond_17

    .line 3368
    goto :goto_a

    .line 3369
    :cond_17
    iget v9, v7, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-le v9, v13, :cond_18

    .line 3370
    goto :goto_b

    .line 3372
    :cond_18
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "position":I
    .end local v7    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    goto :goto_a

    .line 3322
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    .end local v22    # "loop_start":I
    .local v6, "focused":Landroid/view/View;
    .local v7, "focusedIndex":I
    .restart local v9    # "loop_start":I
    :cond_19
    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v9

    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .end local v9    # "loop_start":I
    .restart local v20    # "focused":Landroid/view/View;
    .restart local v21    # "focusedIndex":I
    .restart local v22    # "loop_start":I
    :cond_1a
    :goto_a
    add-int v16, v12, v15

    .end local v12    # "i":I
    .restart local v16    # "i":I
    move/from16 v18, v11

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v9, v22

    const/4 v5, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_7

    .line 3375
    .end local v4    # "movement":I
    .end local v8    # "focusedPos":I
    .end local v10    # "immediateFocusedChild":Landroid/view/View;
    .end local v11    # "loop_end":I
    .end local v13    # "focusedRow":I
    .end local v14    # "focusableCount":I
    .end local v15    # "inc":I
    .end local v16    # "i":I
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    .end local v22    # "loop_start":I
    :cond_1b
    :goto_b
    nop

    .line 3412
    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto/16 :goto_10

    .line 3304
    .restart local v4    # "movement":I
    .restart local v6    # "focused":Landroid/view/View;
    .restart local v7    # "focusedIndex":I
    .restart local v8    # "focusedPos":I
    .restart local v10    # "immediateFocusedChild":Landroid/view/View;
    :cond_1c
    move-object/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "focused":Landroid/view/View;
    .end local v7    # "focusedIndex":I
    .restart local v20    # "focused":Landroid/view/View;
    .restart local v21    # "focusedIndex":I
    :goto_c
    const/4 v5, 0x1

    return v5

    .line 3376
    .end local v4    # "movement":I
    .end local v8    # "focusedPos":I
    .end local v10    # "immediateFocusedChild":Landroid/view/View;
    .end local v20    # "focused":Landroid/view/View;
    .end local v21    # "focusedIndex":I
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3377
    .local v4, "focusableCount":I
    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-eqz v5, :cond_22

    .line 3379
    iget-object v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v5

    .line 3380
    .local v5, "left":I
    iget-object v6, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v6

    add-int/2addr v6, v5

    .line 3381
    .local v6, "right":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .local v8, "count":I
    :goto_d
    if-ge v7, v8, :cond_1f

    .line 3382
    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3383
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1e

    .line 3384
    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v10

    if-lt v10, v5, :cond_1e

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    if-gt v10, v6, :cond_1e

    .line 3385
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3381
    .end local v9    # "child":Landroid/view/View;
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 3390
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_21

    .line 3391
    const/4 v7, 0x0

    .restart local v7    # "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    .restart local v8    # "count":I
    :goto_e
    if-ge v7, v8, :cond_21

    .line 3392
    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3393
    .restart local v9    # "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_20

    .line 3394
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3391
    .end local v9    # "child":Landroid/view/View;
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 3398
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_21
    goto :goto_f

    .line 3399
    :cond_22
    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 3400
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_23

    .line 3401
    invoke-virtual {v5, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3405
    .end local v5    # "view":Landroid/view/View;
    :cond_23
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_24

    .line 3406
    const/4 v5, 0x1

    return v5

    .line 3408
    :cond_24
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 3409
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "focusableCount":I
    goto :goto_10

    .line 3412
    :cond_25
    move-object/from16 v6, p1

    :goto_10
    return v5
.end method

.method onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3658
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3659
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3660
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    .line 3662
    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3156
    if-eqz p1, :cond_2

    .line 3158
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3159
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 3160
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 3161
    goto :goto_1

    .line 3163
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3164
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3165
    goto :goto_1

    .line 3158
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3169
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3827
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3828
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 3829
    .local v0, "count":I
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3830
    .local v1, "reverseFlowPrimary":Z
    :goto_0
    const/16 v4, 0x17

    if-le v0, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3831
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 3832
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_2

    .line 3833
    if-eqz v1, :cond_1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_1
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    .line 3839
    :cond_2
    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    .line 3843
    :cond_3
    const/16 v2, 0x2000

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3845
    :goto_2
    invoke-virtual {p3, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3847
    :cond_4
    if-le v0, v3, :cond_8

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3848
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_7

    .line 3849
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_6

    .line 3850
    if-eqz v1, :cond_5

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_3

    :cond_5
    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    :goto_3
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    .line 3856
    :cond_6
    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    .line 3860
    :cond_7
    const/16 v2, 0x1000

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3862
    :goto_4
    invoke-virtual {p3, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3864
    :cond_8
    nop

    .line 3866
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 3867
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 3868
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    .line 3869
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    .line 3866
    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v2

    .line 3870
    .local v2, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3871
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3872
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 11
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 3699
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3700
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_4

    instance-of v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_2

    .line 3703
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 3704
    .local v1, "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    .line 3705
    .local v2, "position":I
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 3706
    .local v3, "rowIndex":I
    :goto_0
    if-gez v3, :cond_2

    .line 3707
    return-void

    .line 3709
    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v4

    div-int v10, v2, v4

    .line 3710
    .local v10, "guessSpanIndex":I
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_3

    .line 3711
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v3

    move v6, v10

    invoke-static/range {v4 .. v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1

    .line 3714
    :cond_3
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v10

    move v6, v3

    invoke-static/range {v4 .. v9}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 3717
    :goto_1
    return-void

    .line 3701
    .end local v1    # "glp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v2    # "position":I
    .end local v3    # "rowIndex":I
    .end local v10    # "guessSpanIndex":I
    :cond_4
    :goto_2
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 3181
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3182
    return-object p1

    .line 3185
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 3186
    .local v0, "ff":Landroid/view/FocusFinder;
    const/4 v1, 0x0

    .line 3187
    .local v1, "result":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    goto :goto_0

    .line 3202
    :cond_1
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_5

    .line 3190
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3191
    if-ne p2, v3, :cond_3

    const/16 v5, 0x82

    goto :goto_1

    :cond_3
    const/16 v5, 0x21

    .line 3193
    .local v5, "absDir":I
    :goto_1
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v6, p1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3195
    .end local v5    # "absDir":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3196
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v5

    if-ne v5, v4, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v2

    .line 3197
    .local v5, "rtl":Z
    :goto_2
    if-ne p2, v3, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    const/16 v6, 0x42

    goto :goto_4

    :cond_7
    const/16 v6, 0x11

    .line 3199
    .local v6, "absDir":I
    :goto_4
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v7, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3200
    .end local v5    # "rtl":Z
    .end local v6    # "absDir":I
    nop

    .line 3204
    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 3205
    return-object v1

    .line 3208
    :cond_9
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/BaseGridView;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_a

    .line 3209
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 3213
    :cond_a
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v5

    .line 3214
    .local v5, "movement":I
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    goto :goto_6

    :cond_b
    move v6, v2

    .line 3215
    .local v6, "isScroll":Z
    :goto_6
    const/high16 v7, 0x20000

    if-ne v5, v4, :cond_e

    .line 3216
    if-nez v6, :cond_c

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_d

    .line 3217
    :cond_c
    move-object v1, p1

    .line 3219
    :cond_d
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3220
    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3221
    move-object v1, p1

    goto :goto_7

    .line 3223
    :cond_e
    if-nez v5, :cond_11

    .line 3224
    if-nez v6, :cond_f

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_10

    .line 3225
    :cond_f
    move-object v1, p1

    .line 3227
    :cond_10
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3228
    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3229
    move-object v1, p1

    goto :goto_7

    .line 3231
    :cond_11
    const/4 v2, 0x3

    if-ne v5, v2, :cond_13

    .line 3232
    if-nez v6, :cond_12

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_15

    .line 3233
    :cond_12
    move-object v1, p1

    goto :goto_7

    .line 3235
    :cond_13
    if-ne v5, v3, :cond_15

    .line 3236
    if-nez v6, :cond_14

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_15

    .line 3237
    :cond_14
    move-object v1, p1

    .line 3240
    :cond_15
    :goto_7
    if-eqz v1, :cond_16

    .line 3241
    return-object v1

    .line 3245
    :cond_16
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3246
    if-eqz v1, :cond_17

    .line 3247
    return-object v1

    .line 3249
    :cond_17
    if-eqz p1, :cond_18

    move-object v2, p1

    goto :goto_8

    :cond_18
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    :goto_8
    return-object v2
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2801
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2803
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v1

    .line 2804
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    .line 2805
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2808
    .end local v0    # "pos":I
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2809
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 2814
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2815
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2816
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .line 2844
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 2845
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v1

    .line 2846
    .local v0, "pos":I
    if-gt p2, v0, :cond_0

    add-int v1, p2, p4

    if-ge v0, v1, :cond_0

    .line 2848
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2849
    :cond_0
    if-ge p2, v0, :cond_1

    sub-int v1, v0, p4

    if-le p3, v1, :cond_1

    .line 2851
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2852
    :cond_1
    if-le p2, v0, :cond_2

    if-ge p3, v0, :cond_2

    .line 2854
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2857
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2858
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2822
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2824
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v0, v2

    .line 2825
    .local v0, "pos":I
    if-gt p2, v0, :cond_1

    .line 2826
    add-int v2, p2, p3

    if-le v2, v0, :cond_0

    .line 2828
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v3, p2, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2829
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2830
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    .line 2832
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2836
    .end local v0    # "pos":I
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    .line 2837
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 2864
    move v0, p2

    .local v0, "i":I
    add-int v1, p2, p3

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2865
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    .line 2864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2867
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 16
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    .line 2161
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v1, :cond_0

    .line 2163
    return-void

    .line 2165
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 2166
    .local v1, "itemCount":I
    if-gez v1, :cond_1

    .line 2167
    return-void

    .line 2170
    :cond_1
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 2173
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2174
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2175
    return-void

    .line 2178
    :cond_2
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_3

    .line 2179
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 2180
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2181
    return-void

    .line 2183
    :cond_3
    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x4

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2185
    invoke-direct/range {p0 .. p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2186
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    .line 2187
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 2188
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 2189
    .local v2, "childCount":I
    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v3, :cond_a

    if-lez v2, :cond_a

    .line 2190
    const v3, 0x7fffffff

    .line 2191
    .local v3, "minChangedEdge":I
    const/high16 v5, -0x80000000

    .line 2192
    .local v5, "maxChangeEdge":I
    iget-object v6, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 2193
    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2192
    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 2193
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v6

    .line 2194
    .local v6, "minOldAdapterPosition":I
    iget-object v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v8, v2, -0x1

    .line 2195
    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2194
    invoke-virtual {v7, v8}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 2195
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v7

    .line 2196
    .local v7, "maxOldAdapterPosition":I
    nop

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_8

    .line 2197
    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2198
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2199
    .local v9, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v10, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v10, v8}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    .line 2205
    .local v10, "newAdapterPosition":I
    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRequested()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2206
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_4

    iget v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v12

    if-eq v11, v12, :cond_6

    .line 2207
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v12

    if-ne v11, v12, :cond_6

    :cond_5
    if-lt v10, v6, :cond_6

    if-le v10, v7, :cond_7

    .line 2210
    :cond_6
    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2211
    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2196
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v10    # "newAdapterPosition":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2214
    .end local v4    # "i":I
    :cond_8
    if-le v5, v3, :cond_9

    .line 2215
    sub-int v4, v5, v3

    iput v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 2218
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2219
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2221
    .end local v3    # "minChangedEdge":I
    .end local v5    # "maxChangeEdge":I
    .end local v6    # "minOldAdapterPosition":I
    .end local v7    # "maxOldAdapterPosition":I
    :cond_a
    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v3, v3, -0x4

    iput v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2222
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2224
    return-void

    .line 2228
    .end local v2    # "childCount":I
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2229
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    .line 2232
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    move v3, v4

    :goto_1
    move v2, v3

    .line 2234
    .local v2, "scrollToFocus":Z
    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v6, -0x80000000

    if-eq v3, v6, :cond_e

    .line 2235
    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v6, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2236
    iput v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2238
    :cond_e
    iput v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2240
    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 2241
    .local v3, "savedFocusView":Landroid/view/View;
    iget v6, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2242
    .local v6, "savedFocusPos":I
    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2243
    .local v7, "savedSubFocusPos":I
    iget-object v8, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v8

    .line 2244
    .local v8, "hadFocus":Z
    iget-object v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v9, :cond_f

    iget-object v9, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v9

    goto :goto_2

    :cond_f
    move v9, v5

    .line 2245
    .local v9, "firstVisibleIndex":I
    :goto_2
    iget-object v10, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v10, :cond_10

    iget-object v10, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    goto :goto_3

    :cond_10
    move v10, v5

    .line 2248
    .local v10, "lastVisibleIndex":I
    :goto_3
    iget v11, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v11, :cond_11

    .line 2249
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v11

    .line 2250
    .local v11, "deltaPrimary":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v12

    .local v12, "deltaSecondary":I
    goto :goto_4

    .line 2252
    .end local v11    # "deltaPrimary":I
    .end local v12    # "deltaSecondary":I
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v12

    .line 2253
    .restart local v12    # "deltaSecondary":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v11

    .line 2255
    .restart local v11    # "deltaPrimary":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v13

    const/16 v14, 0x10

    if-eqz v13, :cond_12

    .line 2256
    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2258
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 2259
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    goto :goto_7

    .line 2261
    :cond_12
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, -0x5

    iput v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2263
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, -0x11

    if-eqz v8, :cond_13

    move v4, v14

    nop

    :cond_13
    or-int/2addr v4, v13

    iput v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2266
    if-eqz v2, :cond_15

    if-ltz v9, :cond_14

    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v4, v10, :cond_14

    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v4, v9, :cond_15

    .line 2268
    :cond_14
    iget v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move v13, v4

    .local v4, "startFromPosition":I
    .local v13, "endPos":I
    goto :goto_5

    .line 2270
    .end local v4    # "startFromPosition":I
    .end local v13    # "endPos":I
    :cond_15
    move v4, v9

    .line 2271
    .restart local v4    # "startFromPosition":I
    move v13, v10

    .line 2273
    .restart local v13    # "endPos":I
    :goto_5
    iget-object v15, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v15, v4}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 2274
    if-eq v13, v5, :cond_16

    .line 2275
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_6

    .line 2286
    .end local v4    # "startFromPosition":I
    .end local v13    # "endPos":I
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2287
    iget-object v4, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    .line 2288
    .local v4, "oldFirstVisible":I
    iget-object v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    .line 2289
    .local v5, "oldLastVisible":I
    neg-int v13, v11

    neg-int v15, v12

    invoke-direct {v0, v8, v2, v13, v15}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZII)V

    .line 2290
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2291
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2306
    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    if-ne v13, v4, :cond_16

    iget-object v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 2307
    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    if-ne v13, v5, :cond_16

    .line 2308
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2309
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2311
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 2312
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    .line 2322
    :cond_17
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_18

    .line 2323
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v13, v13, -0x401

    iput v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_8

    .line 2325
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2330
    :goto_8
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_1a

    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v13, v6, :cond_19

    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v13, v7, :cond_19

    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2331
    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    if-ne v13, v3, :cond_19

    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_1a

    .line 2333
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_9

    .line 2334
    :cond_1a
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x14

    if-ne v13, v14, :cond_1b

    .line 2338
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2340
    :cond_1b
    :goto_9
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 2341
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_1c

    .line 2342
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v13

    invoke-direct {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2345
    :cond_1c
    iget v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v13, v13, -0x4

    iput v13, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2346
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2348
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2079
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2082
    :cond_0
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 1439
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1443
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1444
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1445
    .local v0, "sizePrimary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1446
    .local v1, "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1447
    .local v2, "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1447
    .local v3, "paddingSecondary":I
    goto :goto_0

    .line 1449
    .end local v0    # "sizePrimary":I
    .end local v1    # "sizeSecondary":I
    .end local v2    # "modeSecondary":I
    .end local v3    # "paddingSecondary":I
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1450
    .restart local v1    # "sizeSecondary":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1451
    .restart local v0    # "sizePrimary":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1452
    .restart local v2    # "modeSecondary":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1461
    .restart local v3    # "paddingSecondary":I
    :goto_0
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1463
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v5, -0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    if-ne v4, v5, :cond_8

    .line 1464
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_1

    move v4, v8

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    :goto_1
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1465
    const/4 v4, 0x0

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1467
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v4, v5, :cond_3

    .line 1468
    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1471
    :cond_3
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1472
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 1475
    :cond_4
    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    .line 1477
    if-eq v2, v7, :cond_7

    if-eqz v2, :cond_6

    if-ne v2, v6, :cond_5

    .line 1486
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1487
    .local v4, "measuredSizeSecondary":I
    goto/16 :goto_6

    .line 1489
    .end local v4    # "measuredSizeSecondary":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "wrong spec"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1479
    :cond_6
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v4

    add-int/2addr v4, v3

    .line 1480
    .restart local v4    # "measuredSizeSecondary":I
    goto/16 :goto_6

    .line 1482
    .end local v4    # "measuredSizeSecondary":I
    :cond_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1484
    .restart local v4    # "measuredSizeSecondary":I
    goto/16 :goto_6

    .line 1493
    .end local v4    # "measuredSizeSecondary":I
    :cond_8
    if-eq v2, v7, :cond_d

    if-eqz v2, :cond_a

    if-ne v2, v6, :cond_9

    goto :goto_4

    .line 1528
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "wrong spec"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1495
    :cond_a
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v4, :cond_b

    sub-int v4, v1, v3

    goto :goto_2

    :cond_b
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    :goto_2
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1497
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_c

    move v4, v8

    goto :goto_3

    :cond_c
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    :goto_3
    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1498
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v6, v8

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 1500
    .restart local v4    # "measuredSizeSecondary":I
    goto :goto_6

    .line 1503
    .end local v4    # "measuredSizeSecondary":I
    :cond_d
    :goto_4
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_e

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v4, :cond_e

    .line 1504
    iput v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1505
    sub-int v4, v1, v3

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_5

    .line 1506
    :cond_e
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v4, :cond_f

    .line 1507
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1508
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_5

    .line 1510
    :cond_f
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v4, :cond_10

    .line 1511
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1512
    sub-int v4, v1, v3

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v6, v8

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    div-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_5

    .line 1515
    :cond_10
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1516
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1518
    :goto_5
    move v4, v1

    .line 1519
    .restart local v4    # "measuredSizeSecondary":I
    if-ne v2, v7, :cond_12

    .line 1520
    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 1522
    .local v5, "childrenSize":I
    if-ge v5, v4, :cond_11

    .line 1523
    move v4, v5

    .line 1525
    .end local v5    # "childrenSize":I
    :cond_11
    nop

    .line 1528
    :cond_12
    :goto_6
    nop

    .line 1531
    iget v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_13

    .line 1532
    invoke-virtual {p0, v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto :goto_7

    .line 1534
    :cond_13
    invoke-virtual {p0, v4, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 1542
    :goto_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 1543
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;

    .line 2871
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2872
    return v1

    .line 2874
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2876
    return v1

    .line 2878
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x23

    if-nez v0, :cond_2

    .line 2879
    invoke-direct {p0, p2, p3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2881
    :cond_2
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3666
    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 3667
    return-void

    .line 3669
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    .line 3670
    .local v0, "loadingState":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3671
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3672
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    .line 3673
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3674
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 3676
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .line 733
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 734
    if-ne p1, v2, :cond_0

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "flags":I
    :goto_0
    goto :goto_1

    .line 736
    .end local v0    # "flags":I
    :cond_1
    if-ne p1, v2, :cond_2

    const/high16 v0, 0x80000

    goto :goto_1

    :cond_2
    move v0, v1

    .line 738
    .restart local v0    # "flags":I
    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    if-ne v3, v0, :cond_3

    .line 739
    return-void

    .line 741
    :cond_3
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const v4, -0xc0001

    and-int/2addr v3, v4

    or-int/2addr v3, v0

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 742
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 743
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    .line 744
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3640
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    .line 3642
    .local v0, "ss":Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    iput v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3644
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3646
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3647
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3648
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v5

    .line 3649
    .local v5, "position":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 3650
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v1, v4, v5}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v1

    .line 3646
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3653
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    iput-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3654
    return-object v0
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 3726
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isScrollEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3728
    return v1

    .line 3730
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3731
    move v0, p3

    .line 3732
    .local v0, "translatedAction":I
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3733
    .local v2, "reverseFlowPrimary":Z
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/16 v6, 0x2000

    const/16 v7, 0x1000

    if-lt v4, v5, :cond_7

    .line 3734
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_5

    .line 3735
    sget-object v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3736
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_3

    .line 3737
    if-eqz v2, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    move v0, v4

    goto :goto_3

    .line 3740
    :cond_3
    sget-object v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3741
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_7

    .line 3742
    if-eqz v2, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    move v0, v4

    goto :goto_3

    .line 3747
    :cond_5
    sget-object v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3748
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_6

    .line 3749
    const/16 v0, 0x2000

    goto :goto_3

    .line 3750
    :cond_6
    sget-object v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3751
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    if-ne p3, v4, :cond_7

    .line 3752
    const/16 v0, 0x1000

    .line 3756
    :cond_7
    :goto_3
    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    goto :goto_4

    .line 3758
    :cond_8
    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3759
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    .line 3760
    goto :goto_4

    .line 3762
    :cond_9
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3763
    invoke-virtual {p0, v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    .line 3766
    :goto_4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 3767
    return v1
.end method

.method processSelectionMoves(ZI)I
    .locals 10
    .param p1, "preventScroll"    # Z
    .param p2, "moves"    # I

    .line 3776
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v0, :cond_0

    .line 3777
    return p2

    .line 3779
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3780
    .local v0, "focusPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    .line 3781
    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 3782
    .local v2, "focusedRow":I
    :goto_0
    const/4 v3, 0x0

    .line 3783
    .local v3, "newSelected":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    .local v5, "count":I
    :goto_1
    if-ge v4, v5, :cond_9

    if-eqz p2, :cond_9

    .line 3784
    if-lez p2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v5, -0x1

    sub-int/2addr v6, v4

    .line 3785
    .local v6, "index":I
    :goto_2
    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3786
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3787
    goto :goto_3

    .line 3789
    :cond_3
    invoke-direct {p0, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v8

    .line 3790
    .local v8, "position":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v8}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v9

    .line 3791
    .local v9, "rowIndex":I
    if-ne v2, v1, :cond_4

    .line 3792
    move v0, v8

    .line 3793
    move-object v3, v7

    .line 3794
    move v2, v9

    goto :goto_3

    .line 3795
    :cond_4
    if-ne v9, v2, :cond_8

    .line 3796
    if-lez p2, :cond_5

    if-gt v8, v0, :cond_6

    :cond_5
    if-gez p2, :cond_8

    if-ge v8, v0, :cond_8

    .line 3798
    :cond_6
    move v0, v8

    .line 3799
    move-object v3, v7

    .line 3800
    if-lez p2, :cond_7

    .line 3801
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3803
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 3783
    .end local v6    # "index":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "position":I
    .end local v9    # "rowIndex":I
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3808
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_9
    if-eqz v3, :cond_c

    .line 3809
    if-eqz p1, :cond_b

    .line 3810
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3811
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3812
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3813
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3815
    :cond_a
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3816
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_4

    .line 3818
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 3821
    :cond_c
    :goto_4
    return p2
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 2033
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2034
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2033
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2037
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 2888
    const/4 v0, 0x0

    return v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2379
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2382
    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2383
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2385
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    .line 2386
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 2388
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .line 2390
    .restart local v0    # "result":I
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2391
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2392
    return v0

    .line 2380
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 2618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2619
    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .line 2664
    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2666
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2671
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2672
    .local v1, "notSmoothScrolling":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 2673
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2674
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2675
    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2676
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    goto/16 :goto_0

    .line 2678
    :cond_0
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v2, 0x200

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2684
    :cond_1
    if-eqz p3, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2685
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2686
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2687
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2688
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2689
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    return-void

    .line 2693
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    .line 2694
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, v2, :cond_6

    .line 2696
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2697
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 2702
    :cond_3
    if-nez v1, :cond_4

    .line 2703
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2704
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    .line 2706
    :cond_4
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 2707
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 2708
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2709
    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2710
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_0

    .line 2712
    :cond_5
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2713
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2714
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2715
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2716
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    .line 2721
    :cond_6
    :goto_0
    return-void

    .line 2679
    :cond_7
    :goto_1
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2680
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2681
    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2682
    return-void
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z

    .line 2932
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    .line 2933
    return-void
.end method

.method scrollToView(Landroid/view/View;ZII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "smooth"    # Z
    .param p3, "extraDelta"    # I
    .param p4, "extraDeltaSecondary"    # I

    .line 2936
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    .line 2938
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2398
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2401
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2402
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2404
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2405
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 2407
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    .line 2409
    .restart local v0    # "result":I
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2410
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2411
    return v0

    .line 2399
    .end local v0    # "result":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 3
    .param p1, "throughFront"    # Z
    .param p2, "throughEnd"    # Z

    .line 815
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x1801

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x800

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    if-eqz p2, :cond_1

    const/16 v1, 0x1000

    nop

    :cond_1
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 818
    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .locals 3
    .param p1, "throughStart"    # Z
    .param p2, "throughEnd"    # Z

    .line 821
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x6001

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x2000

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    nop

    :cond_1
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 824
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 872
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    .line 873
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "space"    # I

    .line 856
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 857
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 859
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 861
    :goto_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .line 827
    if-ltz p1, :cond_0

    .line 828
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 829
    return-void

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 884
    if-nez p1, :cond_0

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 886
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 893
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 719
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 725
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 726
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment;->setOrientation(I)V

    .line 727
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment;->setOrientation(I)V

    .line 728
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    .line 729
    return-void
.end method

.method public setRowHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .line 835
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_1
    :goto_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    .line 840
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "primaryScrollExtra"    # I

    .line 2629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2630
    return-void
.end method

.method public setSelection(IIZI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "smooth"    # Z
    .param p4, "primaryScrollExtra"    # I

    .line 2655
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_2

    .line 2657
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    .line 2659
    :cond_2
    return-void
.end method

.method public setSelectionSmooth(I)V
    .locals 2
    .param p1, "position"    # I

    .line 2633
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    .line 2634
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2
    .param p1, "space"    # I

    .line 848
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 849
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 851
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    .line 853
    :goto_0
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1
    .param p1, "windowAlignment"    # I

    .line 755
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    .line 756
    return-void
.end method

.method skipSmoothScrollerOnStopInternal()V
    .locals 2

    .line 2755
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_0

    .line 2756
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    .line 2758
    :cond_0
    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 2
    .param p1, "position"    # I

    .line 2724
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 2745
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2746
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2747
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    return v1
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 2762
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2763
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 2764
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_1

    .line 2765
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2766
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2769
    :cond_0
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2772
    :cond_1
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2773
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    .line 2775
    :goto_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 2086
    const/4 v0, 0x1

    return v0
.end method

.method updatePositionDeltaInPreLayout()V
    .locals 4

    .line 2140
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2141
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2142
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2143
    .local v1, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .line 2144
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 2145
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    goto :goto_0

    .line 2146
    :cond_0
    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 2148
    :goto_0
    return-void
.end method

.method updatePositionToRowMapInPostLayout()V
    .locals 6

    .line 2090
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2091
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 2092
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2094
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v2

    .line 2095
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2096
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v3

    .line 2097
    .local v3, "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    if-eqz v3, :cond_0

    .line 2098
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    .end local v2    # "position":I
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/Grid$Location;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2102
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method updateScrollLimits()V
    .locals 15

    .line 2526
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2527
    return-void

    .line 2531
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2532
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 2533
    .local v0, "highVisiblePos":I
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 2534
    .local v2, "highMaxPos":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v3

    .line 2535
    .local v3, "lowVisiblePos":I
    const/4 v4, 0x0

    .local v4, "lowMinPos":I
    goto :goto_0

    .line 2537
    .end local v0    # "highVisiblePos":I
    .end local v2    # "highMaxPos":I
    .end local v3    # "lowVisiblePos":I
    .end local v4    # "lowMinPos":I
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 2538
    .restart local v0    # "highVisiblePos":I
    const/4 v2, 0x0

    .line 2539
    .restart local v2    # "highMaxPos":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v3

    .line 2540
    .restart local v3    # "lowVisiblePos":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 2542
    .restart local v4    # "lowMinPos":I
    :goto_0
    if-ltz v0, :cond_9

    if-gez v3, :cond_2

    goto/16 :goto_5

    .line 2545
    :cond_2
    const/4 v5, 0x0

    if-ne v0, v2, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v5

    .line 2546
    .local v6, "highAvailable":Z
    :goto_1
    if-ne v3, v4, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v5

    .line 2547
    .local v7, "lowAvailable":Z
    :goto_2
    if-nez v6, :cond_5

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_5

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    .line 2548
    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2549
    return-void

    .line 2552
    :cond_5
    if-eqz v6, :cond_7

    .line 2553
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v8, v1, v9}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v8

    .line 2554
    .local v8, "maxEdge":I
    sget-object v9, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v9, v9, v1

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    .line 2555
    .local v9, "maxChild":Landroid/view/View;
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v10

    .line 2556
    .local v10, "maxViewCenter":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2557
    .local v11, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v12

    .line 2558
    .local v12, "multipleAligns":[I
    if-eqz v12, :cond_6

    array-length v13, v12

    if-lez v13, :cond_6

    .line 2559
    array-length v13, v12

    sub-int/2addr v13, v1

    aget v13, v12, v13

    aget v14, v12, v5

    sub-int/2addr v13, v14

    add-int/2addr v10, v13

    .line 2561
    .end local v9    # "maxChild":Landroid/view/View;
    .end local v11    # "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    .end local v12    # "multipleAligns":[I
    :cond_6
    goto :goto_3

    .line 2562
    .end local v8    # "maxEdge":I
    .end local v10    # "maxViewCenter":I
    :cond_7
    const v8, 0x7fffffff

    .line 2563
    .restart local v8    # "maxEdge":I
    const v10, 0x7fffffff

    .restart local v10    # "maxViewCenter":I
    :goto_3
    move v9, v10

    .line 2566
    .end local v10    # "maxViewCenter":I
    .local v9, "maxViewCenter":I
    if-eqz v7, :cond_8

    .line 2567
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v10, v5, v11}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v5

    .line 2568
    .local v5, "minEdge":I
    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v10, v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2569
    .local v1, "minChild":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    .line 2570
    .local v1, "minViewCenter":I
    goto :goto_4

    .line 2571
    .end local v1    # "minViewCenter":I
    .end local v5    # "minEdge":I
    :cond_8
    const/high16 v5, -0x80000000

    .line 2572
    .restart local v5    # "minEdge":I
    const/high16 v1, -0x80000000

    .line 2574
    .restart local v1    # "minViewCenter":I
    :goto_4
    iget-object v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v10

    invoke-virtual {v10, v5, v8, v1, v9}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    .line 2575
    return-void

    .line 2543
    .end local v1    # "minViewCenter":I
    .end local v5    # "minEdge":I
    .end local v6    # "highAvailable":Z
    .end local v7    # "lowAvailable":Z
    .end local v8    # "maxEdge":I
    .end local v9    # "maxViewCenter":I
    :cond_9
    :goto_5
    return-void
.end method
