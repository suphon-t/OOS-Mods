.class public Lcom/google/android/flexbox/FlexLine;
.super Ljava/lang/Object;
.source "FlexLine.java"


# instance fields
.field mBottom:I

.field mCrossSize:I

.field mDividerLengthInMainSize:I

.field mFirstIndex:I

.field mGoneItemCount:I

.field mIndicesAlignSelfStretch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mItemCount:I

.field mLastIndex:I

.field mLeft:I

.field mMainSize:I

.field mMaxBaseline:I

.field mRight:I

.field mSumCrossSizeBefore:I

.field mTop:I

.field mTotalFlexGrow:F

.field mTotalFlexShrink:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 36
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 38
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 40
    iput v0, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getCrossSize()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    return v0
.end method

.method public getItemCountNotGone()I
    .locals 2

    .line 121
    iget v0, p0, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method updatePositionFromView(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftDecoration"    # I
    .param p3, "topDecoration"    # I
    .param p4, "rightDecoration"    # I
    .param p5, "bottomDecoration"    # I

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 159
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    .line 160
    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexLine;->mTop:I

    .line 161
    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 162
    iget v1, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 164
    return-void
.end method
