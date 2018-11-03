.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Lcom/google/android/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAlignItems:I

.field private mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field private final mContext:Landroid/content/Context;

.field private mDirtyPosition:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private final mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field private mFromBottomToTop:Z

.field private mIsRtl:Z

.field private mJustifyContent:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mParent:Landroid/view/View;

.field private mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mState:Landroid/support/v7/widget/RecyclerView$State;

.field private mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mViewCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    nop

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flexDirection"    # I

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flexDirection"    # I
    .param p3, "flexWrap"    # I

    .line 218
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 123
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 150
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 155
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 160
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 187
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 193
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 221
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 223
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 241
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 123
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 150
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 155
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 160
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    .line 187
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 193
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 242
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 243
    .local v0, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 255
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 250
    nop

    .line 259
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 260
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 262
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 263
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$2800(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 46
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object v0
.end method

.method private canViewBeRecycledFromEnd(Landroid/view/View;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollingOffset"    # I

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1403
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v3

    sub-int/2addr v3, p2

    if-lt v0, v3, :cond_2

    .line 1402
    move v1, v2

    goto :goto_0

    .line 1403
    :cond_2
    nop

    .line 1402
    :goto_0
    return v1
.end method

.method private canViewBeRecycledFromStart(Landroid/view/View;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollingOffset"    # I

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1350
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    if-gt v0, p2, :cond_0

    .line 1349
    move v1, v2

    goto :goto_0

    .line 1350
    :cond_0
    nop

    .line 1349
    :goto_0
    return v1

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private clearFlexLines()V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2323
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 2324
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 2325
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2181
    return v1

    .line 2183
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2184
    .local v0, "allChildrenCount":I
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 2185
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2186
    .local v2, "firstReferenceView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v3

    .line 2187
    .local v3, "lastReferenceView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 2191
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2192
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 2193
    .local v1, "extend":I
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 2188
    .end local v1    # "extend":I
    :cond_2
    :goto_0
    return v1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 13
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2215
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2216
    return v1

    .line 2218
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2219
    .local v0, "allChildrenCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2220
    .local v2, "firstReferenceView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v3

    .line 2221
    .local v3, "lastReferenceView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    .line 2224
    :cond_1
    nop

    .line 2225
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 2226
    .local v4, "minPosition":I
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    .line 2227
    .local v5, "maxPosition":I
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2228
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2227
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 2229
    .local v6, "laidOutArea":I
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v7, v7, v4

    .line 2230
    .local v7, "firstLinePosition":I
    if-eqz v7, :cond_3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_0

    .line 2233
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v1, v5

    .line 2234
    .local v1, "lastLinePosition":I
    sub-int v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    .line 2235
    .local v8, "lineRange":I
    int-to-float v9, v6

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 2237
    .local v9, "averageSizePerLine":F
    int-to-float v10, v7

    mul-float/2addr v10, v9

    iget-object v11, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2238
    invoke-virtual {v11}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2239
    invoke-virtual {v12, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 2237
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    return v10

    .line 2231
    .end local v1    # "lastLinePosition":I
    .end local v8    # "lineRange":I
    .end local v9    # "averageSizePerLine":F
    :cond_3
    :goto_0
    return v1

    .line 2222
    .end local v4    # "minPosition":I
    .end local v5    # "maxPosition":I
    .end local v6    # "laidOutArea":I
    .end local v7    # "firstLinePosition":I
    :cond_4
    :goto_1
    return v1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 9
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2268
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2269
    return v1

    .line 2271
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2272
    .local v0, "allItemCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    .line 2273
    .local v2, "firstReferenceView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v3

    .line 2274
    .local v3, "lastReferenceView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 2277
    :cond_1
    nop

    .line 2278
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2279
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 2280
    .local v4, "lastVisiblePosition":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2281
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 2280
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2282
    .local v5, "laidOutArea":I
    sub-int v6, v4, v1

    add-int/lit8 v6, v6, 0x1

    .line 2283
    .local v6, "laidOutRange":I
    int-to-float v7, v5

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    .line 2275
    .end local v1    # "firstVisiblePosition":I
    .end local v4    # "lastVisiblePosition":I
    .end local v5    # "laidOutArea":I
    .end local v6    # "laidOutRange":I
    :cond_2
    :goto_0
    return v1
.end method

.method private ensureLayoutState()V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 1799
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1801
    :cond_0
    return-void
.end method

.method private ensureOrientationHelper()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    .line 1768
    return-void

    .line 1778
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1779
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    .line 1780
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1781
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1783
    :cond_1
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1784
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1787
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    .line 1788
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1789
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1791
    :cond_3
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1792
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1795
    :goto_0
    return-void
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1259
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1260
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1261
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1263
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1265
    :cond_1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 1266
    .local v0, "start":I
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    .line 1267
    .local v2, "remainingSpace":I
    const/4 v3, 0x0

    .line 1268
    .local v3, "consumed":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    .line 1269
    .local v4, "mainAxisHorizontal":Z
    :goto_0
    if-gtz v2, :cond_2

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1270
    invoke-static {p3, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1271
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1272
    .local v5, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1273
    invoke-direct {p0, v5, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLine(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1275
    if-nez v4, :cond_3

    iget-boolean v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v6, :cond_3

    .line 1276
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1278
    :cond_3
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1281
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v6

    sub-int/2addr v2, v6

    .line 1282
    .end local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_0

    .line 1283
    :cond_4
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1284
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    if-eq v5, v1, :cond_6

    .line 1285
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1286
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    if-gez v1, :cond_5

    .line 1287
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1289
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1291
    :cond_6
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method private findFirstReferenceChild(I)Landroid/view/View;
    .locals 5
    .param p1, "itemCount"    # I

    .line 1166
    nop

    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, "firstFound":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1169
    return-object v1

    .line 1171
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1172
    .local v2, "firstFoundPosition":I
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v3, v3, v2

    .line 1173
    .local v3, "firstFoundLinePosition":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1174
    return-object v1

    .line 1176
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 1177
    .local v1, "firstFoundLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method private findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 7
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "firstVisibleLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 2104
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2105
    .local v0, "mainAxisHorizontal":Z
    move-object v1, p1

    .line 2106
    .local v1, "referenceView":Landroid/view/View;
    const/4 v2, 0x1

    .local v2, "i":I
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 2107
    .local v3, "to":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2108
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2109
    .local v4, "viewInSameLine":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 2110
    goto :goto_1

    .line 2112
    :cond_0
    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 2113
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2114
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2115
    move-object v1, v4

    goto :goto_1

    .line 2118
    :cond_1
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2119
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 2120
    move-object v1, v4

    .line 2107
    .end local v4    # "viewInSameLine":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v2    # "i":I
    .end local v3    # "to":I
    :cond_3
    return-object v1
.end method

.method private findLastReferenceChild(I)Landroid/view/View;
    .locals 5
    .param p1, "itemCount"    # I

    .line 1189
    nop

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object v0

    .line 1191
    .local v0, "lastFound":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1192
    const/4 v1, 0x0

    return-object v1

    .line 1194
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1195
    .local v1, "lastFoundPosition":I
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v2, v2, v1

    .line 1196
    .local v2, "lastFoundLinePosition":I
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 1197
    .local v3, "lastFoundLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {p0, v0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method private findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 7
    .param p1, "lastView"    # Landroid/view/View;
    .param p2, "lastVisibleLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 2136
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2137
    .local v0, "mainAxisHorizontal":Z
    move-object v1, p1

    .line 2138
    .local v1, "referenceView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v3

    iget v4, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 2139
    .local v3, "to":I
    :goto_0
    if-le v2, v3, :cond_3

    .line 2140
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2141
    .local v4, "viewInSameLine":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 2142
    goto :goto_1

    .line 2144
    :cond_0
    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 2147
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2148
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 2149
    move-object v1, v4

    goto :goto_1

    .line 2152
    :cond_1
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2153
    invoke-virtual {v6, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 2154
    move-object v1, v4

    .line 2139
    .end local v4    # "viewInSameLine":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2158
    .end local v2    # "i":I
    .end local v3    # "to":I
    :cond_3
    return-object v1
.end method

.method private findOneVisibleChild(IIZ)Landroid/view/View;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .line 2475
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2476
    .local v0, "next":I
    :goto_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-eq v1, p2, :cond_2

    .line 2477
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2478
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isViewVisible(Landroid/view/View;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2479
    return-object v2

    .line 2476
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/2addr v1, v0

    goto :goto_1

    .line 2482
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private findReferenceChild(III)Landroid/view/View;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "itemCount"    # I

    .line 1210
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 1211
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 1214
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1215
    .local v2, "boundStart":I
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1216
    .local v3, "boundEnd":I
    if-le p2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 1217
    .local v4, "diff":I
    :goto_0
    move-object v5, v0

    move v0, p1

    .local v0, "i":I
    .local v5, "invalidMatch":Landroid/view/View;
    :goto_1
    if-eq v0, p2, :cond_5

    .line 1218
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1219
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 1220
    .local v7, "position":I
    if-ltz v7, :cond_4

    if-ge v7, p3, :cond_4

    .line 1221
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1222
    if-nez v5, :cond_4

    .line 1223
    move-object v5, v6

    goto :goto_3

    .line 1225
    :cond_1
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-lt v8, v2, :cond_3

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1226
    invoke-virtual {v8, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-le v8, v3, :cond_2

    goto :goto_2

    .line 1231
    :cond_2
    return-object v6

    .line 1227
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1228
    move-object v1, v6

    .line 1217
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    :cond_4
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 1235
    .end local v0    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v0, v5

    :goto_4
    return-object v0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 813
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 815
    .local v0, "columnAndRtl":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 816
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p1, v2

    .line 817
    .local v2, "gap":I
    if-lez v2, :cond_1

    .line 818
    invoke-direct {p0, v2, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .local v1, "fixOffset":I
    :goto_1
    goto :goto_2

    .line 820
    .end local v1    # "fixOffset":I
    :cond_1
    return v1

    .line 823
    .end local v2    # "gap":I
    :cond_2
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p1

    .line 824
    .restart local v2    # "gap":I
    if-lez v2, :cond_4

    .line 825
    neg-int v1, v2

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    neg-int v1, v1

    goto :goto_1

    .line 827
    .restart local v1    # "fixOffset":I
    :goto_2
    nop

    .line 832
    add-int/2addr p1, v1

    .line 833
    if-eqz p4, :cond_3

    .line 835
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v2, v3, p1

    .line 836
    if-lez v2, :cond_3

    .line 837
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 838
    add-int v3, v2, v1

    return v3

    .line 841
    :cond_3
    return v1

    .line 827
    .end local v1    # "fixOffset":I
    :cond_4
    return v1
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .line 775
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 777
    .local v0, "gap":I
    if-lez v0, :cond_0

    .line 779
    neg-int v1, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    goto :goto_0

    .line 781
    :cond_0
    return v1

    .line 784
    .end local v0    # "gap":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 785
    .restart local v0    # "gap":I
    if-lez v0, :cond_3

    .line 787
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    neg-int v1, v1

    .line 789
    .local v1, "fixOffset":I
    :goto_0
    nop

    .line 792
    add-int/2addr p1, v1

    .line 793
    if-eqz p4, :cond_2

    .line 795
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v0, p1, v2

    .line 796
    if-lez v0, :cond_2

    .line 797
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 798
    sub-int v2, v1, v0

    return v2

    .line 801
    :cond_2
    return v1

    .line 789
    .end local v1    # "fixOffset":I
    :cond_3
    return v1
.end method

.method private getChildBottom(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2346
    nop

    .line 2347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2348
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildLeft(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2328
    nop

    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2330
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getChildRight(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2334
    nop

    .line 2335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2336
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2340
    nop

    .line 2341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2342
    .local v0, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8
    .param p1, "delta"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1916
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto :goto_5

    .line 1919
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 1920
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1922
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1923
    .local v0, "columnAndRtl":Z
    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 1924
    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .local v2, "layoutDirection":I
    :goto_1
    goto :goto_2

    .line 1926
    .end local v2    # "layoutDirection":I
    :cond_3
    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1928
    .restart local v2    # "layoutDirection":I
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1930
    .local v3, "absDelta":I
    invoke-direct {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutState(II)V

    .line 1932
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1933
    .local v4, "freeScroll":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p2, p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    add-int/2addr v5, v4

    .line 1934
    .local v5, "consumed":I
    if-gez v5, :cond_5

    .line 1935
    return v1

    .line 1938
    :cond_5
    if-eqz v0, :cond_7

    .line 1939
    if-le v3, v5, :cond_6

    neg-int v1, v2

    mul-int/2addr v1, v5

    goto :goto_3

    :cond_6
    move v1, p1

    .local v1, "scrolled":I
    :goto_3
    goto :goto_4

    .line 1941
    .end local v1    # "scrolled":I
    :cond_7
    if-le v3, v5, :cond_8

    mul-int v1, v2, v5

    goto :goto_4

    :cond_8
    move v1, p1

    .line 1943
    .restart local v1    # "scrolled":I
    :goto_4
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1944
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2702(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1945
    return v1

    .line 1917
    .end local v0    # "columnAndRtl":Z
    .end local v1    # "scrolled":I
    .end local v2    # "layoutDirection":I
    .end local v3    # "absDelta":I
    .end local v4    # "freeScroll":I
    .end local v5    # "consumed":I
    :cond_9
    :goto_5
    return v1
.end method

.method private handleScrollingMainAxis(I)I
    .locals 6
    .param p1, "delta"    # I

    .line 1949
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 1952
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 1953
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 1954
    .local v0, "isMainAxisHorizontal":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1955
    .local v2, "parentLength":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 1957
    .local v3, "mainAxisLength":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v1, v5

    nop

    .line 1958
    .local v1, "layoutRtl":Z
    :cond_3
    if-eqz v1, :cond_6

    .line 1959
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1960
    .local v4, "absDelta":I
    if-gez p1, :cond_4

    .line 1961
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1962
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v2

    .line 1961
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1963
    neg-int p1, p1

    goto :goto_3

    .line 1965
    :cond_4
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v5

    add-int/2addr v5, p1

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1966
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v5

    neg-int v5, v5

    goto :goto_2

    :cond_5
    move v5, p1

    :goto_2
    move p1, v5

    .line 1969
    .end local v4    # "absDelta":I
    :goto_3
    goto :goto_5

    .line 1970
    :cond_6
    if-lez p1, :cond_7

    .line 1971
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1972
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v4, v2

    .line 1971
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5

    .line 1974
    :cond_7
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    add-int/2addr v4, p1

    if-ltz v4, :cond_8

    .line 1975
    move v4, p1

    goto :goto_4

    .line 1974
    :cond_8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1975
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    neg-int v4, v4

    :goto_4
    move p1, v4

    .line 1978
    :goto_5
    return p1

    .line 1950
    .end local v0    # "isMainAxisHorizontal":Z
    .end local v1    # "layoutRtl":Z
    .end local v2    # "parentLength":I
    .end local v3    # "mainAxisLength":I
    :cond_9
    :goto_6
    return v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 5
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .line 2305
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2306
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2307
    .local v1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 2308
    return v2

    .line 2310
    :cond_0
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_1

    .line 2318
    return v2

    .line 2316
    :cond_1
    if-ne v1, p0, :cond_2

    move v2, v4

    nop

    :cond_2
    return v2

    .line 2312
    :cond_3
    return v4

    .line 2314
    :cond_4
    if-lt v1, p0, :cond_5

    move v2, v4

    nop

    :cond_5
    return v2
.end method

.method private isViewVisible(Landroid/view/View;Z)Z
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "completelyVisible"    # Z

    .line 2361
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 2362
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 2363
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2364
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2365
    .local v3, "bottom":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildLeft(Landroid/view/View;)I

    move-result v4

    .line 2366
    .local v4, "childLeft":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildTop(Landroid/view/View;)I

    move-result v5

    .line 2367
    .local v5, "childTop":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildRight(Landroid/view/View;)I

    move-result v6

    .line 2368
    .local v6, "childRight":I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildBottom(Landroid/view/View;)I

    move-result v7

    .line 2370
    .local v7, "childBottom":I
    const/4 v8, 0x0

    .line 2371
    .local v8, "horizontalCompletelyVisible":Z
    const/4 v9, 0x0

    .line 2372
    .local v9, "horizontalPartiallyVisible":Z
    const/4 v10, 0x0

    .line 2373
    .local v10, "verticalCompletelyVisible":Z
    const/4 v11, 0x0

    .line 2374
    .local v11, "verticalPartiallyVisible":Z
    if-gt v0, v4, :cond_0

    if-lt v2, v6, :cond_0

    .line 2375
    const/4 v8, 0x1

    .line 2377
    :cond_0
    if-ge v4, v2, :cond_1

    if-lt v6, v0, :cond_2

    .line 2378
    :cond_1
    const/4 v9, 0x1

    .line 2381
    :cond_2
    if-gt v1, v5, :cond_3

    if-lt v3, v7, :cond_3

    .line 2382
    const/4 v10, 0x1

    .line 2384
    :cond_3
    if-ge v5, v3, :cond_4

    if-lt v7, v1, :cond_5

    .line 2385
    :cond_4
    const/4 v11, 0x1

    .line 2387
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz p2, :cond_7

    .line 2388
    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    move v12, v13

    nop

    :cond_6
    return v12

    .line 2390
    :cond_7
    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    move v12, v13

    nop

    :cond_8
    return v12
.end method

.method private layoutFlexLine(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1
    .param p1, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisHorizontal(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    return v0

    .line 1423
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->layoutFlexLineMainAxisVertical(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    return v0
.end method

.method private layoutFlexLineMainAxisHorizontal(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 29
    .param p1, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1428
    nop

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v9

    .line 1431
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v10

    .line 1432
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v11

    .line 1434
    .local v11, "parentWidth":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 1435
    .local v1, "childTop":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1436
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v1, v2

    .line 1438
    .end local v1    # "childTop":I
    .local v12, "childTop":I
    :cond_0
    move v12, v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v13

    .line 1444
    .local v13, "startPosition":I
    const/4 v1, 0x0

    .line 1445
    .local v1, "spaceBetweenItem":F
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v14, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1473
    move-object/from16 v5, p2

    move/from16 v19, v9

    move/from16 v24, v10

    move/from16 v28, v11

    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "parentWidth":I
    .local v19, "paddingLeft":I
    .local v24, "paddingRight":I
    .local v28, "parentWidth":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1459
    .end local v19    # "paddingLeft":I
    .end local v24    # "paddingRight":I
    .end local v28    # "parentWidth":I
    .restart local v9    # "paddingLeft":I
    .restart local v10    # "paddingRight":I
    .restart local v11    # "parentWidth":I
    :pswitch_0
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v2, :cond_1

    .line 1460
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v11, v2

    int-to-float v2, v2

    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 1463
    :cond_1
    int-to-float v2, v9

    div-float v4, v1, v3

    add-float/2addr v2, v4

    .line 1464
    .local v2, "childLeft":F
    sub-int v4, v11, v10

    int-to-float v4, v4

    div-float v3, v1, v3

    sub-float/2addr v4, v3

    .line 1465
    .local v4, "childRight":F
    goto :goto_1

    .line 1467
    .end local v2    # "childLeft":F
    .end local v4    # "childRight":F
    :pswitch_1
    int-to-float v2, v9

    .line 1468
    .restart local v2    # "childLeft":F
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eq v3, v14, :cond_2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v3, v14

    int-to-float v3, v3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1469
    .local v3, "denominator":F
    :goto_0
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 1470
    sub-int v4, v11, v10

    int-to-float v4, v4

    .line 1471
    .restart local v4    # "childRight":F
    goto :goto_1

    .line 1455
    .end local v2    # "childLeft":F
    .end local v3    # "denominator":F
    .end local v4    # "childRight":F
    :pswitch_2
    int-to-float v2, v9

    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v11, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 1456
    .restart local v2    # "childLeft":F
    sub-int v4, v11, v10

    int-to-float v4, v4

    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v5, v11, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 1457
    .restart local v4    # "childRight":F
    goto :goto_1

    .line 1451
    .end local v2    # "childLeft":F
    .end local v4    # "childRight":F
    :pswitch_3
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v11, v2

    add-int/2addr v2, v10

    int-to-float v2, v2

    .line 1452
    .restart local v2    # "childLeft":F
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v9

    int-to-float v4, v3

    .line 1453
    .restart local v4    # "childRight":F
    goto :goto_1

    .line 1447
    .end local v2    # "childLeft":F
    .end local v4    # "childRight":F
    :pswitch_4
    int-to-float v2, v9

    .line 1448
    .restart local v2    # "childLeft":F
    sub-int v3, v11, v10

    int-to-float v4, v3

    .line 1449
    .restart local v4    # "childRight":F
    nop

    .line 1473
    :goto_1
    move v3, v4

    .line 1476
    .end local v4    # "childRight":F
    .local v3, "childRight":F
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1477
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1478
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 1482
    .end local v1    # "spaceBetweenItem":F
    .local v15, "spaceBetweenItem":F
    const/4 v1, 0x0

    .line 1483
    .local v1, "indexInFlexLine":I
    move v4, v13

    .local v4, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v5

    move v7, v4

    .end local v4    # "i":I
    .local v5, "itemCount":I
    .local v7, "i":I
    :goto_2
    move/from16 v16, v5

    .line 1484
    .end local v5    # "itemCount":I
    .local v16, "itemCount":I
    add-int v4, v13, v16

    if-ge v7, v4, :cond_7

    .line 1485
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v6

    .line 1486
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_3

    .line 1487
    nop

    .line 1484
    move/from16 v21, v7

    move/from16 v19, v9

    move/from16 v24, v10

    move/from16 v28, v11

    goto/16 :goto_6

    .line 1490
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    if-ne v4, v14, :cond_4

    .line 1491
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1492
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    .line 1502
    .end local v1    # "indexInFlexLine":I
    .local v17, "indexInFlexLine":I
    :goto_3
    move/from16 v17, v1

    goto :goto_4

    .line 1494
    .end local v17    # "indexInFlexLine":I
    .restart local v1    # "indexInFlexLine":I
    :cond_4
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1495
    invoke-virtual {v0, v6, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1502
    .end local v1    # "indexInFlexLine":I
    .restart local v17    # "indexInFlexLine":I
    :goto_4
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v4, v1, v7

    .line 1503
    .local v4, "measureSpec":J
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    .line 1504
    .local v1, "widthSpec":I
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v14, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v14

    .line 1505
    .local v14, "heightSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v19, v9

    move-object/from16 v9, v18

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1506
    .local v9, "lp":Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .restart local v19    # "paddingLeft":I
    invoke-direct {v0, v6, v1, v14, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1507
    invoke-virtual {v6, v1, v14}, Landroid/view/View;->measure(II)V

    .line 1510
    :cond_5
    move/from16 v20, v1

    iget v1, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    .end local v1    # "widthSpec":I
    .local v20, "widthSpec":I
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v18

    add-int v1, v1, v18

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 1511
    iget v1, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v18

    add-int v1, v1, v18

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 1513
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int v18, v12, v1

    .line 1514
    .local v18, "topWithDecoration":I
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_6

    .line 1515
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 1516
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v21, v21, v22

    .line 1517
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 1518
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v18, v23

    .line 1515
    move/from16 v24, v10

    move v10, v2

    move-object v2, v6

    .end local v2    # "childLeft":F
    .local v10, "childLeft":F
    .restart local v24    # "paddingRight":I
    move/from16 v25, v3

    move-object v3, v8

    .end local v3    # "childRight":F
    .local v25, "childRight":F
    move-wide/from16 v26, v4

    move/from16 v4, v21

    .end local v4    # "measureSpec":J
    .local v26, "measureSpec":J
    move/from16 v5, v18

    move/from16 v28, v11

    move-object v11, v6

    move/from16 v6, v22

    .end local v6    # "view":Landroid/view/View;
    .local v11, "view":Landroid/view/View;
    .restart local v28    # "parentWidth":I
    move/from16 v21, v7

    move/from16 v7, v23

    .end local v7    # "i":I
    .local v21, "i":I
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_5

    .line 1520
    .end local v21    # "i":I
    .end local v24    # "paddingRight":I
    .end local v25    # "childRight":F
    .end local v26    # "measureSpec":J
    .end local v28    # "parentWidth":I
    .restart local v2    # "childLeft":F
    .restart local v3    # "childRight":F
    .restart local v4    # "measureSpec":J
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "i":I
    .local v10, "paddingRight":I
    .local v11, "parentWidth":I
    :cond_6
    move/from16 v25, v3

    move-wide/from16 v26, v4

    move/from16 v21, v7

    move/from16 v24, v10

    move/from16 v28, v11

    move v10, v2

    move-object v11, v6

    .end local v2    # "childLeft":F
    .end local v3    # "childRight":F
    .end local v4    # "measureSpec":J
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "i":I
    .local v10, "childLeft":F
    .local v11, "view":Landroid/view/View;
    .restart local v21    # "i":I
    .restart local v24    # "paddingRight":I
    .restart local v25    # "childRight":F
    .restart local v26    # "measureSpec":J
    .restart local v28    # "parentWidth":I
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 1521
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1522
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    .line 1523
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v18, v2

    .line 1520
    move-object v2, v11

    move-object v3, v8

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 1525
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v15

    add-float v2, v10, v1

    .line 1527
    .end local v10    # "childLeft":F
    .restart local v2    # "childLeft":F
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v11}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v15

    sub-float v3, v25, v1

    .line 1484
    .end local v9    # "lp":Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    .end local v14    # "heightSpec":I
    .end local v18    # "topWithDecoration":I
    .end local v20    # "widthSpec":I
    .end local v25    # "childRight":F
    .end local v26    # "measureSpec":J
    .restart local v3    # "childRight":F
    move/from16 v1, v17

    .end local v17    # "indexInFlexLine":I
    .local v1, "indexInFlexLine":I
    :goto_6
    add-int/lit8 v7, v21, 0x1

    .line 1483
    .end local v21    # "i":I
    .restart local v7    # "i":I
    move/from16 v5, v16

    move/from16 v9, v19

    move/from16 v10, v24

    move/from16 v11, v28

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1530
    .end local v7    # "i":I
    .end local v16    # "itemCount":I
    .end local v19    # "paddingLeft":I
    .end local v24    # "paddingRight":I
    .end local v28    # "parentWidth":I
    .local v9, "paddingLeft":I
    .local v10, "paddingRight":I
    .local v11, "parentWidth":I
    :cond_7
    move/from16 v19, v9

    move/from16 v24, v10

    move/from16 v28, v11

    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "parentWidth":I
    .restart local v19    # "paddingLeft":I
    .restart local v24    # "paddingRight":I
    .restart local v28    # "parentWidth":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1531
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private layoutFlexLineMainAxisVertical(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 33
    .param p1, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1535
    nop

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v10

    .line 1538
    .local v10, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v11

    .line 1539
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v12

    .line 1541
    .local v12, "parentHeight":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 1543
    .local v1, "childLeft":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    .line 1544
    .local v2, "childRight":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1545
    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v1, v3

    .line 1546
    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v2, v3

    .line 1548
    .end local v1    # "childLeft":I
    .end local v2    # "childRight":I
    .local v13, "childLeft":I
    .local v14, "childRight":I
    :cond_0
    move v13, v1

    move v14, v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v15

    .line 1554
    .local v15, "startPosition":I
    const/4 v1, 0x0

    .line 1555
    .local v1, "spaceBetweenItem":F
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1584
    move-object/from16 v5, p2

    move/from16 v21, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    .end local v10    # "paddingTop":I
    .end local v11    # "paddingBottom":I
    .end local v12    # "parentHeight":I
    .end local v13    # "childLeft":I
    .local v21, "paddingTop":I
    .local v30, "paddingBottom":I
    .local v31, "parentHeight":I
    .local v32, "childLeft":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid justifyContent is set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1570
    .end local v21    # "paddingTop":I
    .end local v30    # "paddingBottom":I
    .end local v31    # "parentHeight":I
    .end local v32    # "childLeft":I
    .restart local v10    # "paddingTop":I
    .restart local v11    # "paddingBottom":I
    .restart local v12    # "parentHeight":I
    .restart local v13    # "childLeft":I
    :pswitch_0
    iget v2, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v2, :cond_1

    .line 1571
    iget v2, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v12, v2

    int-to-float v2, v2

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 1574
    :cond_1
    int-to-float v2, v10

    div-float v4, v1, v3

    add-float/2addr v2, v4

    .line 1575
    .local v2, "childTop":F
    sub-int v4, v12, v11

    int-to-float v4, v4

    div-float v3, v1, v3

    sub-float/2addr v4, v3

    .line 1576
    .local v4, "childBottom":F
    goto :goto_1

    .line 1578
    .end local v2    # "childTop":F
    .end local v4    # "childBottom":F
    :pswitch_1
    int-to-float v2, v10

    .line 1579
    .restart local v2    # "childTop":F
    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eq v3, v8, :cond_2

    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1580
    .local v3, "denominator":F
    :goto_0
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 1581
    sub-int v4, v12, v11

    int-to-float v4, v4

    .line 1582
    .restart local v4    # "childBottom":F
    goto :goto_1

    .line 1565
    .end local v2    # "childTop":F
    .end local v3    # "denominator":F
    .end local v4    # "childBottom":F
    :pswitch_2
    int-to-float v2, v10

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 1566
    .restart local v2    # "childTop":F
    sub-int v4, v12, v11

    int-to-float v4, v4

    iget v5, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v5, v12, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 1568
    .restart local v4    # "childBottom":F
    goto :goto_1

    .line 1561
    .end local v2    # "childTop":F
    .end local v4    # "childBottom":F
    :pswitch_3
    iget v2, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v12, v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    .line 1562
    .restart local v2    # "childTop":F
    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v10

    int-to-float v4, v3

    .line 1563
    .restart local v4    # "childBottom":F
    goto :goto_1

    .line 1557
    .end local v2    # "childTop":F
    .end local v4    # "childBottom":F
    :pswitch_4
    int-to-float v2, v10

    .line 1558
    .restart local v2    # "childTop":F
    sub-int v3, v12, v11

    int-to-float v4, v3

    .line 1559
    .restart local v4    # "childBottom":F
    nop

    .line 1584
    :goto_1
    move v3, v4

    .line 1587
    .end local v4    # "childBottom":F
    .local v3, "childBottom":F
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1588
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1589
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 1593
    .end local v1    # "spaceBetweenItem":F
    .local v16, "spaceBetweenItem":F
    const/4 v1, 0x0

    .line 1594
    .local v1, "indexInFlexLine":I
    move v4, v15

    .local v4, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v5

    move v7, v4

    .end local v4    # "i":I
    .local v5, "itemCount":I
    .local v7, "i":I
    :goto_2
    move/from16 v17, v5

    .line 1595
    .end local v5    # "itemCount":I
    .local v17, "itemCount":I
    add-int v4, v15, v17

    if-ge v7, v4, :cond_9

    .line 1596
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v6

    .line 1597
    .local v6, "view":Landroid/view/View;
    if-nez v6, :cond_3

    .line 1598
    nop

    .line 1595
    move/from16 v19, v7

    move/from16 v28, v8

    move/from16 v21, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    goto/16 :goto_6

    .line 1604
    :cond_3
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v4, v4, v7

    .line 1605
    .local v4, "measureSpec":J
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v8, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v8

    .line 1606
    .local v8, "widthSpec":I
    move/from16 v19, v7

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .end local v7    # "i":I
    .local v19, "i":I
    invoke-virtual {v7, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v7

    .line 1607
    .local v7, "heightSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v21, v10

    move-object/from16 v10, v20

    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1608
    .local v10, "lp":Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .restart local v21    # "paddingTop":I
    invoke-direct {v0, v6, v8, v7, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1609
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->measure(II)V

    .line 1612
    :cond_4
    move-wide/from16 v22, v4

    iget v4, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    .end local v4    # "measureSpec":J
    .local v22, "measureSpec":J
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v2, v4

    .line 1613
    .end local v2    # "childTop":F
    .local v5, "childTop":F
    iget v2, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v4, v3, v2

    .line 1615
    .end local v3    # "childBottom":F
    .local v4, "childBottom":F
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1616
    sget-object v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1617
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    .line 1624
    .end local v1    # "indexInFlexLine":I
    .local v18, "indexInFlexLine":I
    :goto_3
    move/from16 v18, v1

    goto :goto_4

    .line 1619
    .end local v18    # "indexInFlexLine":I
    .restart local v1    # "indexInFlexLine":I
    :cond_5
    sget-object v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1620
    invoke-virtual {v0, v6, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    .line 1621
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1624
    .end local v1    # "indexInFlexLine":I
    .restart local v18    # "indexInFlexLine":I
    :goto_4
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int v20, v13, v1

    .line 1625
    .local v20, "leftWithDecoration":I
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int v24, v14, v1

    .line 1626
    .local v24, "rightWithDecoration":I
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_7

    .line 1627
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v1, :cond_6

    .line 1628
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1629
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    sub-int v25, v24, v25

    .line 1630
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v26, v26, v27

    .line 1631
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 1628
    move/from16 v28, v2

    move-object v2, v6

    move/from16 v29, v3

    move-object v3, v9

    move/from16 v30, v11

    move v11, v4

    move/from16 v4, v28

    .end local v4    # "childBottom":F
    .local v11, "childBottom":F
    .restart local v30    # "paddingBottom":I
    move/from16 v31, v12

    move v12, v5

    move/from16 v5, v25

    .end local v5    # "childTop":F
    .local v12, "childTop":F
    .restart local v31    # "parentHeight":I
    move/from16 v32, v13

    move-object v13, v6

    move/from16 v6, v26

    .end local v6    # "view":Landroid/view/View;
    .local v13, "view":Landroid/view/View;
    .restart local v32    # "childLeft":I
    move/from16 v25, v7

    move/from16 v7, v24

    .end local v7    # "heightSpec":I
    .local v25, "heightSpec":I
    move/from16 v26, v8

    move/from16 v28, v29

    move/from16 v8, v27

    .end local v8    # "widthSpec":I
    .local v26, "widthSpec":I
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_5

    .line 1633
    .end local v25    # "heightSpec":I
    .end local v26    # "widthSpec":I
    .end local v30    # "paddingBottom":I
    .end local v31    # "parentHeight":I
    .end local v32    # "childLeft":I
    .restart local v4    # "childBottom":F
    .restart local v5    # "childTop":F
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "heightSpec":I
    .restart local v8    # "widthSpec":I
    .local v11, "paddingBottom":I
    .local v12, "parentHeight":I
    .local v13, "childLeft":I
    :cond_6
    move/from16 v28, v3

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move v11, v4

    move v12, v5

    move-object v13, v6

    .end local v4    # "childBottom":F
    .end local v5    # "childTop":F
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "heightSpec":I
    .end local v8    # "widthSpec":I
    .local v11, "childBottom":F
    .local v12, "childTop":F
    .local v13, "view":Landroid/view/View;
    .restart local v25    # "heightSpec":I
    .restart local v26    # "widthSpec":I
    .restart local v30    # "paddingBottom":I
    .restart local v31    # "parentHeight":I
    .restart local v32    # "childLeft":I
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1634
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v24, v2

    .line 1635
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1636
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    .line 1633
    move-object v2, v13

    move-object v3, v9

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_5

    .line 1639
    .end local v25    # "heightSpec":I
    .end local v26    # "widthSpec":I
    .end local v30    # "paddingBottom":I
    .end local v31    # "parentHeight":I
    .end local v32    # "childLeft":I
    .restart local v4    # "childBottom":F
    .restart local v5    # "childTop":F
    .restart local v6    # "view":Landroid/view/View;
    .restart local v7    # "heightSpec":I
    .restart local v8    # "widthSpec":I
    .local v11, "paddingBottom":I
    .local v12, "parentHeight":I
    .local v13, "childLeft":I
    :cond_7
    move/from16 v28, v3

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move v11, v4

    move v12, v5

    move-object v13, v6

    .end local v4    # "childBottom":F
    .end local v5    # "childTop":F
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "heightSpec":I
    .end local v8    # "widthSpec":I
    .local v11, "childBottom":F
    .local v12, "childTop":F
    .local v13, "view":Landroid/view/View;
    .restart local v25    # "heightSpec":I
    .restart local v26    # "widthSpec":I
    .restart local v30    # "paddingBottom":I
    .restart local v31    # "parentHeight":I
    .restart local v32    # "childLeft":I
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v1, :cond_8

    .line 1640
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1641
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v6, v2, v3

    .line 1642
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v20, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1640
    move-object v2, v13

    move-object v3, v9

    move/from16 v5, v20

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_5

    .line 1644
    :cond_8
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1645
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1646
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v20, v2

    .line 1647
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    .line 1644
    move-object v2, v13

    move-object v3, v9

    move/from16 v5, v20

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 1650
    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float v1, v1, v16

    add-float v5, v12, v1

    .line 1652
    .end local v12    # "childTop":F
    .restart local v5    # "childTop":F
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 1653
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float v1, v1, v16

    sub-float v4, v11, v1

    .line 1595
    .end local v10    # "lp":Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    .end local v11    # "childBottom":F
    .end local v13    # "view":Landroid/view/View;
    .end local v20    # "leftWithDecoration":I
    .end local v22    # "measureSpec":J
    .end local v24    # "rightWithDecoration":I
    .end local v25    # "heightSpec":I
    .end local v26    # "widthSpec":I
    .restart local v4    # "childBottom":F
    move v3, v4

    move v2, v5

    move/from16 v1, v18

    .end local v4    # "childBottom":F
    .end local v5    # "childTop":F
    .end local v18    # "indexInFlexLine":I
    .restart local v1    # "indexInFlexLine":I
    .restart local v2    # "childTop":F
    .restart local v3    # "childBottom":F
    :goto_6
    add-int/lit8 v7, v19, 0x1

    .line 1594
    .end local v19    # "i":I
    .local v7, "i":I
    move/from16 v5, v17

    move/from16 v10, v21

    move/from16 v8, v28

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    goto/16 :goto_2

    .line 1655
    .end local v7    # "i":I
    .end local v17    # "itemCount":I
    .end local v21    # "paddingTop":I
    .end local v30    # "paddingBottom":I
    .end local v31    # "parentHeight":I
    .end local v32    # "childLeft":I
    .local v10, "paddingTop":I
    .local v11, "paddingBottom":I
    .local v12, "parentHeight":I
    .local v13, "childLeft":I
    :cond_9
    move/from16 v21, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    .end local v10    # "paddingTop":I
    .end local v11    # "paddingBottom":I
    .end local v12    # "parentHeight":I
    .end local v13    # "childLeft":I
    .restart local v21    # "paddingTop":I
    .restart local v30    # "paddingBottom":I
    .restart local v31    # "parentHeight":I
    .restart local v32    # "childLeft":I
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1656
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1295
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    return-void

    .line 1298
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    goto :goto_0

    .line 1302
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleFlexLinesFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1304
    :goto_0
    return-void
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 1414
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1415
    invoke-virtual {p0, v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1414
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1417
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private recycleFlexLinesFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 11
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1357
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1358
    return-void

    .line 1360
    :cond_0
    nop

    .line 1361
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1362
    .local v0, "limit":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    .line 1363
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 1364
    return-void

    .line 1367
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1368
    .local v2, "lastView":Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    aget v3, v3, v4

    .line 1369
    .local v3, "currentLineIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1370
    return-void

    .line 1372
    :cond_2
    add-int/lit8 v4, v1, -0x1

    .line 1373
    .local v4, "recycleTo":I
    move v5, v1

    .line 1374
    .local v5, "recycleFrom":I
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 1375
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_5

    .line 1376
    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1377
    .local v8, "view":Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromEnd(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1378
    iget v9, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    invoke-virtual {p0, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1382
    move v5, v7

    .line 1383
    if-gtz v3, :cond_3

    .line 1385
    goto :goto_1

    .line 1387
    :cond_3
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    add-int/2addr v3, v9

    .line 1388
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 1375
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1395
    .end local v7    # "i":I
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v5, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1396
    return-void
.end method

.method private recycleFlexLinesFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 1308
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1309
    return-void

    .line 1311
    :cond_0
    nop

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    .line 1313
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1314
    return-void

    .line 1316
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1318
    .local v2, "firstView":Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    aget v3, v3, v4

    .line 1319
    .local v3, "currentLineIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1320
    return-void

    .line 1322
    :cond_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 1323
    .local v4, "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v5, -0x1

    .line 1324
    .local v5, "recycleTo":I
    move v6, v3

    move v3, v1

    .local v3, "i":I
    .local v6, "currentLineIndex":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 1325
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1326
    .local v7, "view":Landroid/view/View;
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canViewBeRecycledFromStart(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1327
    iget v8, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-virtual {p0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 1331
    move v5, v3

    .line 1332
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v6, v8, :cond_3

    .line 1334
    goto :goto_1

    .line 1336
    :cond_3
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2300(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    add-int/2addr v6, v8

    .line 1337
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 1324
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1344
    .end local v3    # "i":I
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v1, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1345
    return-void
.end method

.method private resolveInfiniteAmount()V
    .locals 3

    .line 1750
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    .local v0, "crossMode":I
    goto :goto_0

    .line 1753
    .end local v0    # "crossMode":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 1762
    .restart local v0    # "crossMode":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1764
    return-void
.end method

.method private resolveLayoutDirection()V
    .locals 5

    .line 995
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v0

    .line 996
    .local v0, "layoutDirection":I
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1020
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1021
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_3

    .line 1013
    :pswitch_0
    if-ne v0, v4, :cond_0

    move v3, v4

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1014
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v1, v2, :cond_1

    .line 1015
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1017
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 1018
    goto :goto_3

    .line 1006
    :pswitch_1
    if-ne v0, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1007
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v1, v2, :cond_3

    .line 1008
    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1010
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 1011
    goto :goto_3

    .line 1002
    :pswitch_2
    if-eq v0, v4, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1003
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v1, v2, :cond_5

    move v3, v4

    nop

    :cond_5
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 1004
    goto :goto_3

    .line 998
    :pswitch_3
    if-ne v0, v4, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 999
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v1, v2, :cond_7

    move v3, v4

    nop

    :cond_7
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    .line 1000
    nop

    .line 1023
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2293
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2294
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2296
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2293
    :goto_1
    return v0
.end method

.method private updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .locals 5
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1128
    return v1

    .line 1132
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1134
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    .local v0, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_6

    .line 1136
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V

    .line 1139
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1141
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1142
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1143
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1144
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1145
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    if-ge v2, v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    .line 1146
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1147
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1148
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1149
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 1147
    :goto_3
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1152
    .end local v1    # "notVisible":Z
    :cond_5
    return v3

    .line 1154
    :cond_6
    return v1
.end method

.method private updateAnchorFromPendingState(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z
    .locals 6
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;
    .param p3, "savedState"    # Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 1050
    nop

    .line 1051
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 1054
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_3

    .line 1063
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1064
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    aget v0, v0, v4

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1065
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1067
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$300(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1066
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1068
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1802(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1069
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1070
    return v4

    .line 1073
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v3, :cond_a

    .line 1074
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    .local v0, "anchorView":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1076
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1077
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1078
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 1079
    return v4

    .line 1081
    :cond_3
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1082
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1083
    .local v2, "startGap":I
    if-gez v2, :cond_4

    .line 1084
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-static {p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1085
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1086
    return v4

    .line 1089
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1090
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1091
    .local v1, "endGap":I
    if-gez v1, :cond_5

    .line 1092
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    invoke-static {p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1093
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1094
    return v4

    .line 1096
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1097
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1098
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1099
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1096
    :goto_0
    invoke-static {p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1100
    .end local v1    # "endGap":I
    .end local v2    # "startGap":I
    goto :goto_1

    .line 1101
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 1102
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1103
    .local v2, "position":I
    iget v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge v3, v2, :cond_8

    move v1, v4

    nop

    :cond_8
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$902(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1105
    .end local v2    # "position":I
    :cond_9
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 1107
    :goto_1
    return v4

    .line 1111
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_b

    .line 1112
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1113
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1112
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    goto :goto_2

    .line 1115
    :cond_b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1118
    :goto_2
    return v4

    .line 1055
    :cond_c
    :goto_3
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 1056
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1060
    return v1

    .line 1052
    :cond_d
    :goto_4
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1026
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorFromPendingState(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorFromChildren(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    return-void

    .line 1043
    :cond_1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 1044
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1302(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1045
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1046
    return-void
.end method

.method private updateDirtyPosition(I)V
    .locals 6
    .param p1, "positionStart"    # I

    .line 617
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 618
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 619
    .local v1, "lastVisiblePosition":I
    if-lt p1, v1, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    .line 623
    .local v2, "childCount":I
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 624
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 625
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 626
    nop

    .line 628
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 629
    return-void

    .line 632
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 634
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 635
    .local v3, "firstView":Landroid/view/View;
    if-nez v3, :cond_2

    .line 636
    return-void

    .line 638
    :cond_2
    if-gt v0, p1, :cond_3

    if-gt p1, v1, :cond_3

    .line 639
    return-void

    .line 644
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 646
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v4, :cond_4

    .line 647
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 648
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    .line 650
    :cond_4
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 651
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 653
    :goto_0
    return-void
.end method

.method private updateFlexLines(I)V
    .locals 18
    .param p1, "childCount"    # I

    move-object/from16 v0, p0

    .line 846
    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 848
    .local v2, "widthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 849
    .local v3, "heightMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v15

    .line 850
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v14

    .line 856
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_2

    .line 857
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v4, v7, :cond_0

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v4, v15, :cond_0

    move v5, v6

    nop

    :cond_0
    move v4, v5

    .line 864
    .local v4, "isMainSizeChanged":Z
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 866
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    .line 877
    .end local v4    # "isMainSizeChanged":Z
    .local v8, "needsToFill":I
    .local v17, "isMainSizeChanged":Z
    :goto_0
    move/from16 v17, v4

    move v8, v5

    goto :goto_1

    .line 868
    .end local v8    # "needsToFill":I
    .end local v17    # "isMainSizeChanged":Z
    :cond_2
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v4, v7, :cond_3

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v4, v14, :cond_3

    move v5, v6

    nop

    :cond_3
    move v4, v5

    .line 875
    .restart local v4    # "isMainSizeChanged":Z
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1100(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 876
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 877
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    goto :goto_0

    .line 880
    .end local v4    # "isMainSizeChanged":Z
    .restart local v8    # "needsToFill":I
    .restart local v17    # "isMainSizeChanged":Z
    :goto_1
    iput v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    .line 881
    iput v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    .line 883
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v4, v5, :cond_6

    if-eqz v17, :cond_5

    goto :goto_2

    .line 923
    :cond_5
    move v6, v14

    move v4, v15

    goto/16 :goto_4

    .line 885
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 887
    return-void

    .line 898
    :cond_7
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 899
    nop

    .line 900
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 902
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 905
    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 903
    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 912
    move v6, v14

    move v4, v15

    goto :goto_3

    .line 907
    :cond_8
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 910
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 908
    move v11, v2

    move v12, v3

    move v13, v8

    move v6, v14

    move v14, v4

    .end local v14    # "height":I
    .local v6, "height":I
    move v4, v15

    move-object v15, v5

    .end local v15    # "width":I
    .local v4, "width":I
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 912
    :goto_3
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v5, v5, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 913
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 914
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 915
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 916
    invoke-static {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v9

    aget v7, v7, v9

    .line 915
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 917
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto/16 :goto_7

    .line 923
    .end local v4    # "width":I
    .end local v6    # "height":I
    .restart local v14    # "height":I
    .restart local v15    # "width":I
    :cond_9
    move v6, v14

    move v4, v15

    .end local v14    # "height":I
    .end local v15    # "width":I
    .restart local v4    # "width":I
    .restart local v6    # "height":I
    :goto_4
    iget v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    if-eq v7, v5, :cond_a

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 924
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_5

    :cond_a
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v5

    .line 926
    .local v5, "fromIndex":I
    :goto_5
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v7}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 928
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 933
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v7, v9, v5}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 934
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 935
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v15

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 934
    move v11, v2

    move v12, v3

    move v13, v8

    move v14, v5

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_6

    .line 938
    :cond_b
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 939
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 940
    move v11, v2

    move v12, v3

    move v13, v8

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_6

    .line 945
    :cond_c
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 950
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v7, v9, v5}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(Ljava/util/List;I)V

    .line 951
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 952
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v15

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 951
    move v11, v3

    move v12, v2

    move v13, v8

    move v14, v5

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_6

    .line 955
    :cond_d
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v7, v1}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 956
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 957
    move v11, v2

    move v12, v3

    move v13, v8

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 961
    :goto_6
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 962
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v7, v2, v3, v5}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 972
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v7, v5}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 974
    .end local v5    # "fromIndex":I
    :goto_7
    return-void
.end method

.method private updateLayoutState(II)V
    .locals 21
    .param p1, "layoutDirection"    # I
    .param p2, "absDelta"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1990
    nop

    .line 1991
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    .line 1995
    .local v2, "mainAxisHorizontal":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1997
    .local v3, "widthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1998
    .local v4, "heightMeasureSpec":I
    const/4 v6, 0x1

    if-nez v2, :cond_0

    iget-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v12, v7

    .line 1999
    .local v12, "columnAndRtl":Z
    const/4 v7, -0x1

    if-ne v1, v6, :cond_7

    .line 2000
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2001
    .local v13, "lastVisible":Landroid/view/View;
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2002
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    .line 2003
    .local v14, "lastVisiblePosition":I
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v11, v8, v14

    .line 2004
    .local v11, "lastVisibleLinePosition":I
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/google/android/flexbox/FlexLine;

    .line 2008
    .local v10, "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {v0, v13, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v9

    .line 2009
    .local v9, "referenceView":Landroid/view/View;
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2010
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    add-int/2addr v5, v14

    invoke-static {v8, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2011
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v5, v5, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v5, v5

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    if-gt v5, v8, :cond_1

    .line 2012
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 2014
    :cond_1
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2015
    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    aget v6, v8, v6

    .line 2014
    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2018
    :goto_1
    if-eqz v12, :cond_3

    .line 2019
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2020
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    neg-int v6, v6

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2021
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    add-int/2addr v6, v8

    .line 2020
    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2022
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2023
    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    goto :goto_2

    .line 2022
    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_3

    .line 2025
    :cond_3
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2026
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2027
    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    sub-int/2addr v6, v8

    .line 2026
    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2030
    :goto_3
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    if-eq v5, v7, :cond_4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2031
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1500(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_6

    :cond_4
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2032
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v6

    if-gt v5, v6, :cond_6

    .line 2036
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    sub-int v15, p2, v5

    .line 2037
    .local v15, "needsToFill":I
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 2038
    if-lez v15, :cond_6

    .line 2039
    if-eqz v2, :cond_5

    .line 2040
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2042
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v16

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 2040
    move v7, v3

    move-object/from16 v17, v8

    move v8, v4

    move-object/from16 v18, v9

    move v9, v15

    .end local v9    # "referenceView":Landroid/view/View;
    .local v18, "referenceView":Landroid/view/View;
    move-object/from16 v19, v10

    move/from16 v10, v16

    .end local v10    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    .local v19, "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v16, v11

    move-object/from16 v11, v17

    .end local v11    # "lastVisibleLinePosition":I
    .local v16, "lastVisibleLinePosition":I
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_4

    .line 2044
    .end local v16    # "lastVisibleLinePosition":I
    .end local v18    # "referenceView":Landroid/view/View;
    .end local v19    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v9    # "referenceView":Landroid/view/View;
    .restart local v10    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v11    # "lastVisibleLinePosition":I
    :cond_5
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move/from16 v16, v11

    .end local v9    # "referenceView":Landroid/view/View;
    .end local v10    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    .end local v11    # "lastVisibleLinePosition":I
    .restart local v16    # "lastVisibleLinePosition":I
    .restart local v18    # "referenceView":Landroid/view/View;
    .restart local v19    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2046
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 2044
    move v7, v3

    move v8, v4

    move v9, v15

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 2048
    :goto_4
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2049
    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    .line 2048
    invoke-virtual {v5, v3, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 2050
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 2053
    .end local v13    # "lastVisible":Landroid/view/View;
    .end local v14    # "lastVisiblePosition":I
    .end local v15    # "needsToFill":I
    .end local v16    # "lastVisibleLinePosition":I
    .end local v18    # "referenceView":Landroid/view/View;
    .end local v19    # "lastVisibleLine":Lcom/google/android/flexbox/FlexLine;
    :cond_6
    goto/16 :goto_8

    .line 2054
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2056
    .local v6, "firstVisible":Landroid/view/View;
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2057
    invoke-virtual {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 2058
    .local v8, "firstVisiblePosition":I
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v9, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v9, v9, v8

    .line 2059
    .local v9, "firstVisibleLinePosition":I
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/flexbox/FlexLine;

    .line 2063
    .local v10, "firstVisibleLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {v0, v6, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v11

    .line 2065
    .local v11, "referenceView":Landroid/view/View;
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2066
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v13, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v13, v13, v8

    .line 2067
    .local v13, "flexLinePosition":I
    if-ne v13, v7, :cond_8

    .line 2068
    const/4 v13, 0x0

    .line 2070
    :cond_8
    if-lez v13, :cond_9

    .line 2071
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v14, v13, -0x1

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    .line 2074
    .local v7, "previousLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v7}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v15

    sub-int v5, v8, v15

    invoke-static {v14, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2075
    .end local v7    # "previousLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_5

    .line 2076
    :cond_9
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2078
    :goto_5
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v13, :cond_a

    add-int/lit8 v7, v13, -0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2080
    if-eqz v12, :cond_c

    .line 2081
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2082
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2083
    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v14

    sub-int/2addr v7, v14

    .line 2082
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2084
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    if-ltz v7, :cond_b

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2085
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    goto :goto_7

    .line 2084
    :cond_b
    const/4 v7, 0x0

    :goto_7
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_8

    .line 2087
    :cond_c
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2088
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    neg-int v7, v7

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2089
    invoke-virtual {v14}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v14

    add-int/2addr v7, v14

    .line 2088
    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2092
    .end local v6    # "firstVisible":Landroid/view/View;
    .end local v8    # "firstVisiblePosition":I
    .end local v9    # "firstVisibleLinePosition":I
    .end local v10    # "firstVisibleLine":Lcom/google/android/flexbox/FlexLine;
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v13    # "flexLinePosition":I
    :goto_8
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    sub-int v6, p2, v6

    invoke-static {v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2093
    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4
    .param p1, "anchorInfo"    # Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;
    .param p2, "fromNextLine"    # Z
    .param p3, "considerInfinite"    # Z

    .line 1679
    if-eqz p3, :cond_0

    .line 1680
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1684
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1688
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1687
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1690
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1691
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1692
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1693
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1694
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1695
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1697
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1698
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1699
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1700
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 1701
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 1702
    .local v0, "currentLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1508(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1703
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1705
    .end local v0    # "currentLine":Lcom/google/android/flexbox/FlexLine;
    :cond_2
    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4
    .param p1, "anchorInfo"    # Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;
    .param p2, "fromPreviousLine"    # Z
    .param p3, "considerInfinite"    # Z

    .line 1721
    if-eqz p3, :cond_0

    .line 1722
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveInfiniteAmount()V

    goto :goto_0

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1102(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1726
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1727
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1728
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1727
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1731
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1730
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1733
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1300(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1734
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1735
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2302(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1736
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1737
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2002(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1738
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1740
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1741
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1742
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 1743
    .local v0, "currentLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1510(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1744
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2200(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexLine;->getItemCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$2202(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1746
    .end local v0    # "currentLine":Lcom/google/android/flexbox/FlexLine;
    :cond_2
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1869
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1874
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 544
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2163
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2167
    .local v0, "scrollExtent":I
    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2198
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2202
    .local v0, "scrollOffset":I
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    return v1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2244
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2248
    .local v0, "scrollRange":I
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 5
    .param p1, "targetPosition"    # I

    .line 520
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 524
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 525
    .local v1, "direction":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 526
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 528
    :cond_2
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2172
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2176
    .local v0, "scrollExtent":I
    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2207
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2211
    .local v0, "scrollOffset":I
    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 2253
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 2257
    .local v0, "scrollRange":I
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 2409
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    .line 2410
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 2443
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    move-result-object v0

    .line 2444
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 534
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 539
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 346
    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 3
    .param p1, "heightSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 473
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v1

    .line 474
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v2

    .line 473
    invoke-static {v0, v1, p2, p3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    return v0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 467
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v1

    .line 468
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 467
    invoke-static {v0, v1, p2, p3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    return v0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 380
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I

    .line 371
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .line 435
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 436
    .local v0, "cachedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 437
    return-object v0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_0
    const/high16 v0, -0x80000000

    .line 483
    .local v0, "largestSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 484
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 485
    .local v3, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 483
    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return v0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 457
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 496
    .local v3, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v4

    .line 493
    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return v0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 1661
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 549
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 550
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 1851
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1852
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    .line 1853
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 1857
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1858
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1863
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1865
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 587
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 588
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 589
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 612
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    .line 613
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 614
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 606
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 607
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 608
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 600
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 601
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 602
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 594
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    .line 595
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 596
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 677
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 678
    iput-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 679
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 680
    .local v0, "childCount":I
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    return-void

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->resolveLayoutDirection()V

    .line 684
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    .line 685
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 686
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    .line 687
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    .line 689
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    .line 691
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$502(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 693
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$600(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$200(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$700(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_3

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 700
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateAnchorInfoForLayout(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 701
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$702(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 703
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 705
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 716
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateFlexLines(I)V

    .line 728
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 729
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 733
    .local v1, "filledToEnd":I
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 734
    .local v4, "startOffset":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v5, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 735
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    .line 739
    .local v5, "filledToStart":I
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 740
    .end local v5    # "filledToStart":I
    .local v1, "endOffset":I
    nop

    .line 751
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_1

    .line 741
    .end local v1    # "endOffset":I
    .end local v4    # "startOffset":I
    :cond_5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 745
    .local v1, "filledToEnd":I
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 746
    .local v4, "endOffset":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v5, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 747
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    .line 751
    .restart local v5    # "filledToStart":I
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->access$1000(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 754
    .end local v5    # "filledToStart":I
    .local v1, "startOffset":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 755
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$900(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 756
    invoke-direct {p0, v4, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v3

    .line 757
    .local v3, "fixOffset":I
    add-int/2addr v1, v3

    .line 758
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 759
    .end local v3    # "fixOffset":I
    goto :goto_2

    .line 760
    :cond_6
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v3

    .line 761
    .restart local v3    # "fixOffset":I
    add-int/2addr v4, v3

    .line 762
    invoke-direct {p0, v4, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 765
    .end local v3    # "fixOffset":I
    :cond_7
    :goto_2
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 978
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 983
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 984
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 985
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    .line 986
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 987
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 988
    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I
    .param p4, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 392
    sget-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    .local v0, "decorationWidth":I
    iget v1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 396
    iget v1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 397
    .end local v0    # "decorationWidth":I
    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    .local v0, "decorationHeight":I
    iget v1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 400
    iget v1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 402
    .end local v0    # "decorationHeight":I
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V
    .locals 0
    .param p1, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 463
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 572
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 573
    move-object v0, p1

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 574
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 583
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 558
    .local v0, "savedState":Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 561
    .local v1, "firstView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$202(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 562
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 563
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 562
    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$302(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 564
    .end local v1    # "firstView":Landroid/view/View;
    goto :goto_0

    .line 565
    :cond_1
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 567
    :goto_0
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 1882
    .local v0, "scrolled":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1883
    return v0

    .line 1885
    .end local v0    # "scrolled":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainAxis(I)I

    move-result v0

    .line 1886
    .restart local v0    # "scrolled":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1887
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1888
    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 1805
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 1806
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1807
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->access$400(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 1810
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 1811
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1895
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingCrossAxis(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 1897
    .local v0, "scrolled":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1898
    return v0

    .line 1900
    .end local v0    # "scrolled":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainAxis(I)I

    move-result v0

    .line 1901
    .restart local v0    # "scrolled":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2400(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$2402(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1902
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1903
    return v0
.end method

.method public setAlignItems(I)V
    .locals 2
    .param p1, "alignItems"    # I

    .line 333
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    .line 334
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 336
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 338
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 339
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 341
    :cond_2
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1
    .param p1, "flexDirection"    # I

    .line 274
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 279
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 281
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 282
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 285
    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 503
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 504
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 2
    .param p1, "flexWrap"    # I

    .line 295
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 299
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v0, p1, :cond_2

    .line 300
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->clearFlexLines()V

    .line 304
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 306
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 307
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 309
    :cond_2
    return-void

    .line 296
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    return-void
.end method
