.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/flexbox/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0
    .param p1, "flexContainer"    # Lcom/google/android/flexbox/FlexContainer;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 98
    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 1
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "viewIndex"    # I
    .param p4, "usedCrossSizeSoFar"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 856
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 857
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    .line 858
    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 859
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "needsMeasure":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexItem;

    .line 873
    .local v1, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 874
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 876
    .local v3, "childHeight":I
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 877
    const/4 v0, 0x1

    .line 878
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    goto :goto_0

    .line 879
    :cond_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    if-le v2, v4, :cond_1

    .line 880
    const/4 v0, 0x1

    .line 881
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 884
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 885
    const/4 v0, 0x1

    .line 886
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v3

    goto :goto_1

    .line 887
    :cond_2
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 888
    const/4 v0, 0x1

    .line 889
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v3

    .line 891
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 892
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 893
    .local v5, "widthSpec":I
    nop

    .line 894
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 895
    .local v4, "heightSpec":I
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 896
    invoke-direct {p0, p2, v5, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 897
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 899
    .end local v4    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_4
    return-void
.end method

.method private constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .param p2, "size"    # I
    .param p3, "totalCrossSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1539
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    sub-int v0, p2, p3

    .line 1540
    .local v0, "spaceAboveAndBottom":I
    div-int/lit8 v0, v0, 0x2

    .line 1541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    .local v1, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    new-instance v2, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v2}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1543
    .local v2, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v0, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1544
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "flexLineSize":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1545
    if-nez v3, :cond_0

    .line 1546
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1549
    .local v5, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1551
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v5    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1554
    .end local v3    # "i":I
    .end local v4    # "flexLineSize":I
    :cond_2
    return-object v1
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 6
    .param p1, "childCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v0, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 159
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    .line 161
    .local v3, "flexItem":Lcom/google/android/flexbox/FlexItem;
    new-instance v4, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 162
    .local v4, "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v5

    iput v5, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 163
    iput v1, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 164
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v4    # "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2
    .param p1, "size"    # I

    .line 974
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v0, :cond_1

    .line 975
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_2

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 977
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 978
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    .line 979
    .end local v0    # "newCapacity":I
    goto :goto_2

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 982
    :goto_2
    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    .line 999
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v9, v0, :cond_0

    goto/16 :goto_d

    .line 1002
    :cond_0
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1003
    .local v10, "sizeBeforeExpand":I
    const/4 v0, 0x0

    .line 1004
    .local v0, "needsReexpand":Z
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    div-float v11, v2, v3

    .line 1005
    .local v11, "unitSpace":F
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1016
    const/4 v2, 0x0

    .line 1017
    .local v2, "largestCrossSize":I
    if-nez p6, :cond_1

    .line 1018
    const/high16 v3, -0x80000000

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1020
    :cond_1
    const/4 v3, 0x0

    .line 1021
    .local v3, "accumulatedRoundError":F
    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move/from16 v16, v3

    .end local v0    # "needsReexpand":Z
    .end local v2    # "largestCrossSize":I
    .end local v3    # "accumulatedRoundError":F
    .local v4, "i":I
    .local v14, "needsReexpand":Z
    .local v15, "largestCrossSize":I
    .local v16, "accumulatedRoundError":F
    :goto_0
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v0, v2, :cond_14

    .line 1022
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v0

    .line 1023
    .local v2, "index":I
    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    .line 1024
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 1025
    nop

    .line 1021
    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    goto/16 :goto_b

    .line 1027
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 1028
    .local v4, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    .line 1029
    .local v5, "flexDirection":I
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v6, :cond_3

    .line 1032
    move/from16 v13, p1

    move/from16 v22, v5

    goto/16 :goto_5

    .line 1094
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 1095
    .local v21, "childMeasuredHeight":I
    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v6, :cond_4

    .line 1101
    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v22, v5

    aget-wide v5, v6, v2

    .line 1102
    .end local v5    # "flexDirection":I
    .local v22, "flexDirection":I
    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v21

    .line 1104
    move/from16 v5, v21

    goto :goto_1

    .end local v22    # "flexDirection":I
    .restart local v5    # "flexDirection":I
    :cond_4
    move/from16 v22, v5

    move/from16 v5, v21

    .end local v21    # "childMeasuredHeight":I
    .local v5, "childMeasuredHeight":I
    .restart local v22    # "flexDirection":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1105
    .local v6, "childMeasuredWidth":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v1, :cond_5

    .line 1107
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v1, v2

    .line 1108
    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v6

    .line 1110
    :cond_5
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_a

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v1

    const/4 v12, 0x0

    cmpl-float v1, v1, v12

    if-lez v1, :cond_a

    .line 1111
    int-to-float v1, v5

    .line 1112
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v1, v12

    .line 1113
    .local v1, "rawCalculatedHeight":F
    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v0, v12, :cond_6

    .line 1114
    add-float v1, v1, v16

    .line 1115
    const/16 v16, 0x0

    .line 1117
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1118
    .local v12, "newHeight":I
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v13

    if-le v12, v13, :cond_7

    .line 1125
    const/4 v13, 0x1

    .line 1126
    .end local v14    # "needsReexpand":Z
    .local v13, "needsReexpand":Z
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v12

    .line 1127
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    .line 1128
    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 1139
    move/from16 v23, v5

    move/from16 v24, v6

    move v14, v13

    goto :goto_3

    .line 1130
    .end local v13    # "needsReexpand":Z
    .restart local v14    # "needsReexpand":Z
    :cond_7
    int-to-float v13, v12

    sub-float v13, v1, v13

    add-float v13, v16, v13

    .line 1131
    .end local v16    # "accumulatedRoundError":F
    .local v13, "accumulatedRoundError":F
    move/from16 v23, v5

    move/from16 v24, v6

    float-to-double v5, v13

    .end local v5    # "childMeasuredHeight":I
    .end local v6    # "childMeasuredWidth":I
    .local v23, "childMeasuredHeight":I
    .local v24, "childMeasuredWidth":I
    cmpl-double v5, v5, v19

    if-lez v5, :cond_8

    .line 1132
    add-int/lit8 v12, v12, 0x1

    .line 1133
    float-to-double v5, v13

    sub-double v5, v5, v19

    double-to-float v5, v5

    .line 1139
    .end local v13    # "accumulatedRoundError":F
    .local v5, "accumulatedRoundError":F
    .restart local v16    # "accumulatedRoundError":F
    :goto_2
    move/from16 v16, v5

    goto :goto_3

    .line 1134
    .end local v5    # "accumulatedRoundError":F
    .end local v16    # "accumulatedRoundError":F
    .restart local v13    # "accumulatedRoundError":F
    :cond_8
    float-to-double v5, v13

    cmpg-double v5, v5, v17

    if-gez v5, :cond_9

    .line 1135
    add-int/lit8 v12, v12, -0x1

    .line 1136
    float-to-double v5, v13

    add-double v5, v5, v19

    double-to-float v5, v5

    goto :goto_2

    .line 1139
    :cond_9
    move/from16 v16, v13

    .end local v13    # "accumulatedRoundError":F
    .restart local v16    # "accumulatedRoundError":F
    :goto_3
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v13, p1

    invoke-direct {v7, v13, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    .line 1141
    .local v5, "childWidthMeasureSpec":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v12, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1143
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1144
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1145
    .end local v24    # "childMeasuredWidth":I
    .local v17, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 1146
    .end local v23    # "childMeasuredHeight":I
    .local v18, "childMeasuredHeight":I
    invoke-direct {v7, v2, v5, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1148
    move/from16 v25, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .end local v1    # "rawCalculatedHeight":F
    .local v25, "rawCalculatedHeight":F
    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1150
    .end local v5    # "childWidthMeasureSpec":I
    .end local v6    # "childHeightMeasureSpec":I
    .end local v12    # "newHeight":I
    .end local v25    # "rawCalculatedHeight":F
    move/from16 v24, v17

    move/from16 v23, v18

    goto :goto_4

    .end local v17    # "childMeasuredWidth":I
    .end local v18    # "childMeasuredHeight":I
    .local v5, "childMeasuredHeight":I
    .local v6, "childMeasuredWidth":I
    :cond_a
    move/from16 v13, p1

    move/from16 v23, v5

    move/from16 v24, v6

    .line 1151
    .end local v5    # "childMeasuredHeight":I
    .end local v6    # "childMeasuredWidth":I
    .restart local v23    # "childMeasuredHeight":I
    .restart local v24    # "childMeasuredWidth":I
    :goto_4
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    add-int v1, v24, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1152
    invoke-interface {v5, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1150
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1153
    .end local v15    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v6

    add-int v6, v23, v6

    .line 1154
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v12

    add-int/2addr v6, v12

    add-int/2addr v5, v6

    iput v5, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1156
    .end local v23    # "childMeasuredHeight":I
    .end local v24    # "childMeasuredWidth":I
    move/from16 v9, p2

    move/from16 v27, v10

    goto/16 :goto_a

    .line 1032
    .end local v1    # "largestCrossSize":I
    .end local v22    # "flexDirection":I
    .local v5, "flexDirection":I
    .restart local v15    # "largestCrossSize":I
    :cond_b
    move/from16 v13, p1

    move/from16 v22, v5

    .end local v5    # "flexDirection":I
    .restart local v22    # "flexDirection":I
    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1033
    .local v1, "childMeasuredWidth":I
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_c

    .line 1039
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v5, v5, v2

    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    .line 1041
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1042
    .local v5, "childMeasuredHeight":I
    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v6, :cond_d

    .line 1044
    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v26, v5

    aget-wide v5, v6, v2

    .end local v5    # "childMeasuredHeight":I
    .local v26, "childMeasuredHeight":I
    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v5

    .line 1046
    .end local v26    # "childMeasuredHeight":I
    .restart local v5    # "childMeasuredHeight":I
    move/from16 v26, v5

    goto :goto_6

    :cond_d
    move/from16 v26, v5

    .end local v5    # "childMeasuredHeight":I
    .restart local v26    # "childMeasuredHeight":I
    :goto_6
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    .line 1047
    int-to-float v5, v1

    .line 1048
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v5, v12

    .line 1049
    .local v5, "rawCalculatedWidth":F
    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v21, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_e

    .line 1050
    add-float v5, v5, v16

    .line 1051
    const/16 v16, 0x0

    .line 1053
    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1054
    .local v12, "newWidth":I
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v6

    if-le v12, v6, :cond_f

    .line 1061
    const/4 v6, 0x1

    .line 1062
    .end local v14    # "needsReexpand":Z
    .local v6, "needsReexpand":Z
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v12

    .line 1063
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    .line 1064
    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 1075
    move v14, v6

    move/from16 v27, v10

    goto :goto_8

    .line 1066
    .end local v6    # "needsReexpand":Z
    .restart local v14    # "needsReexpand":Z
    :cond_f
    int-to-float v6, v12

    sub-float v6, v5, v6

    add-float v6, v16, v6

    .line 1067
    .end local v16    # "accumulatedRoundError":F
    .local v6, "accumulatedRoundError":F
    move/from16 v27, v10

    float-to-double v9, v6

    .end local v10    # "sizeBeforeExpand":I
    .local v27, "sizeBeforeExpand":I
    cmpl-double v9, v9, v19

    if-lez v9, :cond_11

    .line 1068
    add-int/lit8 v12, v12, 0x1

    .line 1069
    float-to-double v9, v6

    sub-double v9, v9, v19

    double-to-float v6, v9

    .line 1075
    .end local v6    # "accumulatedRoundError":F
    .restart local v16    # "accumulatedRoundError":F
    :cond_10
    :goto_7
    move/from16 v16, v6

    goto :goto_8

    .line 1070
    .end local v16    # "accumulatedRoundError":F
    .restart local v6    # "accumulatedRoundError":F
    :cond_11
    float-to-double v9, v6

    cmpg-double v9, v9, v17

    if-gez v9, :cond_10

    .line 1071
    add-int/lit8 v12, v12, -0x1

    .line 1072
    float-to-double v9, v6

    add-double v9, v9, v19

    double-to-float v6, v9

    goto :goto_7

    .line 1075
    .end local v6    # "accumulatedRoundError":F
    .restart local v16    # "accumulatedRoundError":F
    :goto_8
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v9, p2

    invoke-direct {v7, v9, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v6

    .line 1077
    .local v6, "childHeightMeasureSpec":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v12, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1079
    .local v10, "childWidthMeasureSpec":I
    invoke-virtual {v3, v10, v6}, Landroid/view/View;->measure(II)V

    .line 1080
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1081
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    .line 1082
    invoke-direct {v7, v2, v10, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1084
    move/from16 v28, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .end local v1    # "childMeasuredWidth":I
    .local v28, "childMeasuredWidth":I
    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1086
    .end local v5    # "rawCalculatedWidth":F
    .end local v6    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v12    # "newWidth":I
    move/from16 v1, v28

    goto :goto_9

    .end local v27    # "sizeBeforeExpand":I
    .end local v28    # "childMeasuredWidth":I
    .restart local v1    # "childMeasuredWidth":I
    .local v10, "sizeBeforeExpand":I
    :cond_12
    move/from16 v9, p2

    move/from16 v27, v10

    .line 1087
    .end local v10    # "sizeBeforeExpand":I
    .restart local v27    # "sizeBeforeExpand":I
    :goto_9
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int v5, v26, v5

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1088
    invoke-interface {v6, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1086
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1089
    .end local v15    # "largestCrossSize":I
    .local v5, "largestCrossSize":I
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v10, v1

    .line 1090
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1091
    .end local v1    # "childMeasuredWidth":I
    .end local v26    # "childMeasuredHeight":I
    nop

    .line 1156
    move v1, v5

    .end local v5    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    :goto_a
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1021
    .end local v2    # "index":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v22    # "flexDirection":I
    move v15, v1

    goto :goto_b

    .end local v1    # "largestCrossSize":I
    .end local v27    # "sizeBeforeExpand":I
    .restart local v10    # "sizeBeforeExpand":I
    .restart local v15    # "largestCrossSize":I
    :cond_13
    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    .end local v10    # "sizeBeforeExpand":I
    .restart local v27    # "sizeBeforeExpand":I
    :goto_b
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    move/from16 v10, v27

    const/4 v1, 0x0

    move/from16 v9, p4

    goto/16 :goto_0

    .line 1159
    .end local v4    # "i":I
    .end local v27    # "sizeBeforeExpand":I
    .restart local v10    # "sizeBeforeExpand":I
    :cond_14
    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    .end local v10    # "sizeBeforeExpand":I
    .restart local v27    # "sizeBeforeExpand":I
    if-eqz v14, :cond_15

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v10, v27

    if-eq v10, v0, :cond_16

    .line 1162
    .end local v27    # "sizeBeforeExpand":I
    .restart local v10    # "sizeBeforeExpand":I
    const/4 v6, 0x1

    move-object v0, v7

    move v1, v13

    move v2, v9

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_c

    .line 1165
    .end local v10    # "sizeBeforeExpand":I
    .restart local v27    # "sizeBeforeExpand":I
    :cond_15
    move/from16 v10, v27

    .end local v27    # "sizeBeforeExpand":I
    .restart local v10    # "sizeBeforeExpand":I
    :cond_16
    :goto_c
    return-void

    .line 1000
    .end local v10    # "sizeBeforeExpand":I
    .end local v11    # "unitSpace":F
    .end local v14    # "needsReexpand":Z
    .end local v15    # "largestCrossSize":I
    .end local v16    # "accumulatedRoundError":F
    :cond_17
    :goto_d
    move/from16 v13, p1

    move/from16 v9, p2

    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I

    .line 1366
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1367
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1368
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1369
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v2

    .line 1366
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v0

    .line 1370
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1371
    .local v1, "childHeight":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1372
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    .line 1373
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1372
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1374
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1375
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    .line 1376
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1375
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1378
    :cond_1
    :goto_0
    return v0
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p3, "padding"    # I

    .line 1349
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1350
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 1351
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1352
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v2

    .line 1349
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v0

    .line 1353
    .local v0, "childWidthMeasureSpec":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1354
    .local v1, "childWidth":I
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1355
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    .line 1356
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1355
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1357
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1358
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    .line 1359
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1358
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1361
    :cond_1
    :goto_0
    return v0
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 809
    if-eqz p2, :cond_0

    .line 810
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0

    .line 813
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 771
    if-eqz p2, :cond_0

    .line 772
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0

    .line 775
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 790
    if-eqz p2, :cond_0

    .line 791
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0

    .line 794
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 752
    if-eqz p2, :cond_0

    .line 753
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0

    .line 756
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 732
    if-eqz p2, :cond_0

    .line 733
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0

    .line 736
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 717
    if-eqz p2, :cond_0

    .line 718
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0

    .line 721
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0
.end method

.method private getPaddingEndCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method private getPaddingEndMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 644
    if-eqz p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getPaddingStartCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method private getPaddingStartMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .line 702
    if-eqz p2, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .line 687
    if-eqz p2, :cond_0

    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "childCount"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 851
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I
    .param p3, "maxSize"    # I
    .param p4, "currentLength"    # I
    .param p5, "childLength"    # I
    .param p6, "flexItem"    # Lcom/google/android/flexbox/FlexItem;
    .param p7, "index"    # I
    .param p8, "indexInFlexLine"    # I

    .line 832
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 833
    return v1

    .line 835
    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 836
    return v2

    .line 838
    :cond_1
    if-nez p2, :cond_2

    .line 839
    return v1

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 842
    invoke-interface {v0, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v0

    .line 843
    .local v0, "decorationLength":I
    if-lez v0, :cond_3

    .line 844
    add-int/2addr p5, v0

    .line 846
    :cond_3
    add-int v3, p4, p5

    if-ge p3, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p4, "maxMainSize"    # I
    .param p5, "paddingAlongMainAxis"    # I
    .param p6, "calledRecursively"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    .line 1182
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1183
    .local v10, "sizeBeforeShrink":I
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-le v9, v0, :cond_0

    .line 1184
    move/from16 v9, p1

    move v11, v10

    move/from16 v10, p2

    goto/16 :goto_a

    .line 1186
    :cond_0
    const/4 v0, 0x0

    .line 1187
    .local v0, "needsReshrink":Z
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    div-float v11, v2, v3

    .line 1188
    .local v11, "unitShrink":F
    const/4 v2, 0x0

    .line 1189
    .local v2, "accumulatedRoundError":F
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v3, p5, v3

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1200
    const/4 v3, 0x0

    .line 1201
    .local v3, "largestCrossSize":I
    if-nez p6, :cond_1

    .line 1202
    const/high16 v4, -0x80000000

    iput v4, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1204
    :cond_1
    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move v6, v3

    .end local v0    # "needsReshrink":Z
    .end local v2    # "accumulatedRoundError":F
    .end local v3    # "largestCrossSize":I
    .local v4, "i":I
    .local v6, "largestCrossSize":I
    .local v14, "needsReshrink":Z
    .local v15, "accumulatedRoundError":F
    :goto_0
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v0, v2, :cond_14

    .line 1205
    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v0

    .line 1206
    .local v2, "index":I
    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    .line 1207
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 1208
    nop

    .line 1204
    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    goto/16 :goto_8

    .line 1210
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 1211
    .local v4, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    .line 1212
    .local v5, "flexDirection":I
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/high16 v21, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v1, :cond_3

    .line 1215
    move/from16 v9, p1

    move/from16 v25, v10

    goto/16 :goto_4

    .line 1278
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 1279
    .local v22, "childMeasuredHeight":I
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v1, :cond_4

    .line 1285
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v1, v2

    .line 1286
    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v22

    .line 1288
    .end local v22    # "childMeasuredHeight":I
    .local v1, "childMeasuredHeight":I
    :cond_4
    move/from16 v1, v22

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 1289
    .local v12, "childMeasuredWidth":I
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_5

    .line 1291
    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v23, v12

    aget-wide v12, v13, v2

    .line 1292
    .end local v12    # "childMeasuredWidth":I
    .local v23, "childMeasuredWidth":I
    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v12

    .line 1294
    .end local v23    # "childMeasuredWidth":I
    .restart local v12    # "childMeasuredWidth":I
    move/from16 v23, v12

    goto :goto_1

    :cond_5
    move/from16 v23, v12

    .end local v12    # "childMeasuredWidth":I
    .restart local v23    # "childMeasuredWidth":I
    :goto_1
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v2

    if-nez v12, :cond_a

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 1295
    int-to-float v12, v1

    .line 1296
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    .line 1297
    .local v12, "rawCalculatedHeight":F
    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v22, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v0, v13, :cond_6

    .line 1298
    add-float/2addr v12, v15

    .line 1299
    const/4 v15, 0x0

    .line 1301
    :cond_6
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1302
    .local v13, "newHeight":I
    move/from16 v24, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    .end local v1    # "childMeasuredHeight":I
    .local v24, "childMeasuredHeight":I
    if-ge v13, v1, :cond_7

    .line 1304
    const/4 v1, 0x1

    .line 1305
    .end local v14    # "needsReshrink":Z
    .local v1, "needsReshrink":Z
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v13

    .line 1306
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    .line 1307
    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 1318
    move v14, v1

    move/from16 v25, v10

    goto :goto_2

    .line 1309
    .end local v1    # "needsReshrink":Z
    .restart local v14    # "needsReshrink":Z
    :cond_7
    int-to-float v1, v13

    sub-float v1, v12, v1

    add-float/2addr v15, v1

    .line 1310
    move/from16 v25, v10

    float-to-double v9, v15

    .end local v10    # "sizeBeforeShrink":I
    .local v25, "sizeBeforeShrink":I
    cmpl-double v1, v9, v19

    if-lez v1, :cond_8

    .line 1311
    add-int/lit8 v13, v13, 0x1

    .line 1312
    sub-float v15, v15, v21

    goto :goto_2

    .line 1313
    :cond_8
    float-to-double v9, v15

    cmpg-double v1, v9, v17

    if-gez v1, :cond_9

    .line 1314
    add-int/lit8 v13, v13, -0x1

    .line 1315
    add-float v15, v15, v21

    .line 1318
    :cond_9
    :goto_2
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v9, p1

    invoke-direct {v7, v9, v4, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1320
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 1321
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1322
    .local v10, "childHeightMeasureSpec":I
    invoke-virtual {v3, v1, v10}, Landroid/view/View;->measure(II)V

    .line 1324
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1325
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1326
    .end local v24    # "childMeasuredHeight":I
    .local v17, "childMeasuredHeight":I
    invoke-direct {v7, v2, v1, v10, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1328
    move/from16 v26, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .end local v1    # "childWidthMeasureSpec":I
    .local v26, "childWidthMeasureSpec":I
    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1330
    .end local v10    # "childHeightMeasureSpec":I
    .end local v12    # "rawCalculatedHeight":F
    .end local v13    # "newHeight":I
    .end local v26    # "childWidthMeasureSpec":I
    move/from16 v24, v17

    goto :goto_3

    .end local v17    # "childMeasuredHeight":I
    .end local v25    # "sizeBeforeShrink":I
    .local v1, "childMeasuredHeight":I
    .local v10, "sizeBeforeShrink":I
    :cond_a
    move/from16 v9, p1

    move/from16 v24, v1

    move/from16 v25, v10

    .line 1331
    .end local v1    # "childMeasuredHeight":I
    .end local v10    # "sizeBeforeShrink":I
    .restart local v24    # "childMeasuredHeight":I
    .restart local v25    # "sizeBeforeShrink":I
    :goto_3
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    add-int v1, v23, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1332
    invoke-interface {v10, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v1, v10

    .line 1330
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1333
    .end local v6    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int v10, v24, v10

    .line 1334
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1336
    .end local v23    # "childMeasuredWidth":I
    .end local v24    # "childMeasuredHeight":I
    move/from16 v10, p2

    move/from16 v28, v11

    goto/16 :goto_7

    .line 1215
    .end local v1    # "largestCrossSize":I
    .end local v25    # "sizeBeforeShrink":I
    .restart local v6    # "largestCrossSize":I
    .restart local v10    # "sizeBeforeShrink":I
    :cond_b
    move/from16 v9, p1

    move/from16 v25, v10

    .end local v10    # "sizeBeforeShrink":I
    .restart local v25    # "sizeBeforeShrink":I
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1216
    .local v1, "childMeasuredWidth":I
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v10, :cond_c

    .line 1222
    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v10, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    .line 1224
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1225
    .local v10, "childMeasuredHeight":I
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v12, :cond_d

    .line 1227
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v12, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v10

    .line 1229
    :cond_d
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v2

    if-nez v12, :cond_12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    .line 1230
    int-to-float v12, v1

    .line 1231
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v16

    mul-float v16, v16, v11

    sub-float v12, v12, v16

    .line 1232
    .local v12, "rawCalculatedWidth":F
    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v0, v13, :cond_e

    .line 1233
    add-float/2addr v12, v15

    .line 1234
    const/4 v15, 0x0

    .line 1236
    :cond_e
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1237
    .local v13, "newWidth":I
    move/from16 v27, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    .end local v1    # "childMeasuredWidth":I
    .local v27, "childMeasuredWidth":I
    if-ge v13, v1, :cond_f

    .line 1244
    const/4 v1, 0x1

    .line 1245
    .end local v14    # "needsReshrink":Z
    .local v1, "needsReshrink":Z
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v13

    .line 1246
    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v16, 0x1

    aput-boolean v16, v14, v2

    .line 1247
    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v16

    sub-float v14, v14, v16

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 1258
    move v14, v1

    move/from16 v29, v10

    move/from16 v28, v11

    goto :goto_5

    .line 1249
    .end local v1    # "needsReshrink":Z
    .restart local v14    # "needsReshrink":Z
    :cond_f
    int-to-float v1, v13

    sub-float v1, v12, v1

    add-float/2addr v15, v1

    .line 1250
    move/from16 v29, v10

    move/from16 v28, v11

    float-to-double v10, v15

    .end local v10    # "childMeasuredHeight":I
    .end local v11    # "unitShrink":F
    .local v28, "unitShrink":F
    .local v29, "childMeasuredHeight":I
    cmpl-double v1, v10, v19

    if-lez v1, :cond_10

    .line 1251
    add-int/lit8 v13, v13, 0x1

    .line 1252
    sub-float v15, v15, v21

    goto :goto_5

    .line 1253
    :cond_10
    float-to-double v10, v15

    cmpg-double v1, v10, v17

    if-gez v1, :cond_11

    .line 1254
    add-int/lit8 v13, v13, -0x1

    .line 1255
    add-float v15, v15, v21

    .line 1258
    :cond_11
    :goto_5
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v10, p2

    invoke-direct {v7, v10, v4, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    .line 1260
    .local v1, "childHeightMeasureSpec":I
    nop

    .line 1261
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1262
    .local v11, "childWidthMeasureSpec":I
    invoke-virtual {v3, v11, v1}, Landroid/view/View;->measure(II)V

    .line 1264
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1265
    .end local v27    # "childMeasuredWidth":I
    .local v16, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1266
    .end local v29    # "childMeasuredHeight":I
    .restart local v17    # "childMeasuredHeight":I
    invoke-direct {v7, v2, v11, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1268
    move/from16 v30, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .end local v1    # "childHeightMeasureSpec":I
    .local v30, "childHeightMeasureSpec":I
    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .end local v11    # "childWidthMeasureSpec":I
    .end local v12    # "rawCalculatedWidth":F
    .end local v13    # "newWidth":I
    .end local v30    # "childHeightMeasureSpec":I
    goto :goto_6

    .line 1270
    .end local v16    # "childMeasuredWidth":I
    .end local v17    # "childMeasuredHeight":I
    .end local v28    # "unitShrink":F
    .local v1, "childMeasuredWidth":I
    .restart local v10    # "childMeasuredHeight":I
    .local v11, "unitShrink":F
    :cond_12
    move/from16 v27, v1

    move/from16 v29, v10

    move/from16 v28, v11

    move/from16 v10, p2

    .end local v1    # "childMeasuredWidth":I
    .end local v10    # "childMeasuredHeight":I
    .end local v11    # "unitShrink":F
    .restart local v27    # "childMeasuredWidth":I
    .restart local v28    # "unitShrink":F
    .restart local v29    # "childMeasuredHeight":I
    move/from16 v16, v27

    move/from16 v17, v29

    .line 1271
    .end local v27    # "childMeasuredWidth":I
    .end local v29    # "childMeasuredHeight":I
    .restart local v16    # "childMeasuredWidth":I
    .restart local v17    # "childMeasuredHeight":I
    :goto_6
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    add-int v1, v17, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1272
    invoke-interface {v11, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v11

    add-int/2addr v1, v11

    .line 1270
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1273
    .end local v6    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int v11, v16, v11

    .line 1274
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1275
    .end local v16    # "childMeasuredWidth":I
    .end local v17    # "childMeasuredHeight":I
    nop

    .line 1336
    :goto_7
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1204
    .end local v2    # "index":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v5    # "flexDirection":I
    move v6, v1

    goto :goto_8

    .end local v1    # "largestCrossSize":I
    .end local v25    # "sizeBeforeShrink":I
    .end local v28    # "unitShrink":F
    .restart local v6    # "largestCrossSize":I
    .local v10, "sizeBeforeShrink":I
    .restart local v11    # "unitShrink":F
    :cond_13
    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    .end local v10    # "sizeBeforeShrink":I
    .end local v11    # "unitShrink":F
    .restart local v25    # "sizeBeforeShrink":I
    .restart local v28    # "unitShrink":F
    :goto_8
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    move/from16 v10, v25

    move/from16 v11, v28

    const/4 v1, 0x0

    move/from16 v9, p4

    goto/16 :goto_0

    .line 1339
    .end local v4    # "i":I
    .end local v25    # "sizeBeforeShrink":I
    .end local v28    # "unitShrink":F
    .restart local v10    # "sizeBeforeShrink":I
    .restart local v11    # "unitShrink":F
    :cond_14
    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    .end local v10    # "sizeBeforeShrink":I
    .end local v11    # "unitShrink":F
    .restart local v25    # "sizeBeforeShrink":I
    .restart local v28    # "unitShrink":F
    if-eqz v14, :cond_16

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v11, v25

    if-eq v11, v0, :cond_15

    .line 1342
    .end local v25    # "sizeBeforeShrink":I
    .local v11, "sizeBeforeShrink":I
    const/4 v12, 0x1

    move-object v0, v7

    move v1, v9

    move v2, v10

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    move v13, v6

    move v6, v12

    .end local v6    # "largestCrossSize":I
    .local v13, "largestCrossSize":I
    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_9

    .line 1345
    .end local v13    # "largestCrossSize":I
    .restart local v6    # "largestCrossSize":I
    :cond_15
    move v13, v6

    .end local v6    # "largestCrossSize":I
    .restart local v13    # "largestCrossSize":I
    goto :goto_9

    .end local v11    # "sizeBeforeShrink":I
    .end local v13    # "largestCrossSize":I
    .restart local v6    # "largestCrossSize":I
    .restart local v25    # "sizeBeforeShrink":I
    :cond_16
    move v13, v6

    move/from16 v11, v25

    .end local v6    # "largestCrossSize":I
    .end local v25    # "sizeBeforeShrink":I
    .restart local v11    # "sizeBeforeShrink":I
    .restart local v13    # "largestCrossSize":I
    :goto_9
    return-void

    .line 1184
    .end local v11    # "sizeBeforeShrink":I
    .end local v13    # "largestCrossSize":I
    .end local v14    # "needsReshrink":Z
    .end local v15    # "accumulatedRoundError":F
    .end local v28    # "unitShrink":F
    .restart local v10    # "sizeBeforeShrink":I
    :cond_17
    move/from16 v9, p1

    move v11, v10

    move/from16 v10, p2

    .end local v10    # "sizeBeforeShrink":I
    .restart local v11    # "sizeBeforeShrink":I
    :goto_a
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 6
    .param p1, "childCount"    # I
    .param p3, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 195
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 197
    new-array v0, p1, [I

    .line 198
    .local v0, "reorderedIndices":[I
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    .line 200
    .local v3, "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    aput v4, v0, v1

    .line 201
    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    iget v5, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .end local v3    # "order":Lcom/google/android/flexbox/FlexboxHelper$Order;
    goto :goto_0

    .line 204
    :cond_0
    return-object v0
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I

    .line 1680
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1681
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1682
    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1683
    .local v1, "newWidth":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1684
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1687
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    .line 1693
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v2, v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v2

    .local v2, "measuredHeight":I
    goto :goto_0

    .line 1695
    .end local v2    # "measuredHeight":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1697
    .restart local v2    # "measuredHeight":I
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1699
    .local v4, "childHeightSpec":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1700
    .local v3, "childWidthSpec":I
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1702
    invoke-direct {p0, p3, v3, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1703
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1704
    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1646
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1647
    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1648
    .local v1, "newHeight":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1649
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1652
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    .line 1658
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v2, v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v2

    .local v2, "measuredWidth":I
    goto :goto_0

    .line 1660
    .end local v2    # "measuredWidth":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1662
    .restart local v2    # "measuredWidth":I
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1665
    .local v4, "childWidthSpec":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1666
    .local v3, "childHeightSpec":I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1668
    invoke-direct {p0, p3, v4, v3, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 1669
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1670
    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "view"    # Landroid/view/View;

    .line 1922
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1927
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 1929
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1930
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1928
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    .line 1932
    :cond_1
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 37
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "mainMeasureSpec"    # I
    .param p3, "crossMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .local p7, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    .line 385
    iget-object v0, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v14

    .line 387
    .local v14, "isMainHorizontal":Z
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 388
    .local v15, "mainMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 390
    .local v8, "mainSize":I
    const/4 v0, 0x0

    .line 393
    .local v0, "childState":I
    if-nez p7, :cond_0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    goto :goto_0

    .line 396
    .end local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :cond_0
    move-object/from16 v1, p7

    .restart local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :goto_0
    move-object v7, v1

    .line 399
    .end local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 401
    const/4 v6, -0x1

    if-ne v13, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 403
    .local v1, "reachedToIndex":Z
    :goto_1
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v16

    .line 404
    .local v16, "mainPaddingStart":I
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v17

    .line 405
    .local v17, "mainPaddingEnd":I
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v18

    .line 406
    .local v18, "crossPaddingStart":I
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v19

    .line 408
    .local v19, "crossPaddingEnd":I
    const/high16 v2, -0x80000000

    .line 411
    .local v2, "largestSizeInCross":I
    const/4 v3, 0x0

    .line 414
    .local v3, "sumCrossSize":I
    const/16 v20, 0x0

    .line 416
    .local v20, "indexInFlexLine":I
    new-instance v6, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v6}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 417
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v5, p5

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 418
    add-int v4, v16, v17

    iput v4, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 420
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    .line 421
    .local v4, "childCount":I
    move/from16 v25, v1

    move/from16 v24, v2

    move v1, v0

    move v0, v5

    .end local v2    # "largestSizeInCross":I
    .local v0, "i":I
    .local v1, "childState":I
    .local v24, "largestSizeInCross":I
    .local v25, "reachedToIndex":Z
    :goto_2
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    if-ge v2, v4, :cond_15

    .line 422
    iget-object v0, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 425
    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 426
    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_3

    .line 429
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v10, 0x8

    if-ne v5, v10, :cond_4

    .line 430
    iget v5, v6, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 431
    iget v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 432
    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 433
    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 421
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    move v0, v2

    move v11, v3

    move v3, v4

    move/from16 v21, v8

    move/from16 v31, v15

    const/4 v8, -0x1

    const/16 v23, 0x1

    const/16 v27, 0x0

    move-object v15, v7

    move v7, v13

    move/from16 v13, p4

    goto/16 :goto_d

    .line 438
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    .line 440
    .local v10, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    move/from16 v28, v4

    const/4 v4, 0x4

    .end local v4    # "childCount":I
    .local v28, "childCount":I
    if-ne v5, v4, :cond_5

    .line 441
    iget-object v4, v6, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_5
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v4

    .line 446
    .local v4, "childMainSize":I
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v5

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v5, v5, v26

    if-eqz v5, :cond_6

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v15, v5, :cond_6

    .line 448
    int-to-float v5, v8

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v26

    mul-float v5, v5, v26

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 456
    .end local v4    # "childMainSize":I
    .local v5, "childMainSize":I
    :cond_6
    move v5, v4

    if-eqz v14, :cond_7

    .line 457
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v26, v16, v17

    .line 459
    move-object/from16 v29, v7

    const/4 v7, 0x1

    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v29, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    add-int v26, v26, v23

    .line 460
    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v7, v26, v23

    .line 457
    invoke-interface {v4, v11, v7, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 462
    .local v4, "childMainMeasureSpec":I
    iget-object v7, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v23, v18, v19

    .line 464
    const/4 v13, 0x1

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    .line 465
    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    move/from16 v30, v8

    add-int v8, v23, v3

    .line 467
    .end local v8    # "mainSize":I
    .local v30, "mainSize":I
    move/from16 v31, v15

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    .line 462
    .end local v15    # "mainMode":I
    .local v31, "mainMode":I
    invoke-interface {v7, v12, v8, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v7

    .line 468
    .local v7, "childCrossMeasureSpec":I
    invoke-virtual {v0, v4, v7}, Landroid/view/View;->measure(II)V

    .line 469
    invoke-direct {v9, v2, v4, v7, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 484
    move v15, v7

    const/4 v8, 0x0

    .end local v4    # "childMainMeasureSpec":I
    .local v7, "childMainMeasureSpec":I
    .local v15, "childCrossMeasureSpec":I
    :goto_4
    move v7, v4

    goto :goto_5

    .line 471
    .end local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v30    # "mainSize":I
    .end local v31    # "mainMode":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v8    # "mainSize":I
    .local v15, "mainMode":I
    :cond_7
    move-object/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v15

    const/4 v13, 0x1

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v8    # "mainSize":I
    .end local v15    # "mainMode":I
    .restart local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v30    # "mainSize":I
    .restart local v31    # "mainMode":I
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v7, v18, v19

    .line 473
    const/4 v8, 0x0

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    .line 474
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    add-int/2addr v7, v3

    .line 475
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    .line 471
    invoke-interface {v4, v12, v7, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v7

    .line 476
    .local v7, "childCrossMeasureSpec":I
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v15, v16, v17

    .line 478
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    .line 479
    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    .line 476
    invoke-interface {v4, v11, v15, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 481
    .restart local v4    # "childMainMeasureSpec":I
    invoke-virtual {v0, v7, v4}, Landroid/view/View;->measure(II)V

    .line 482
    invoke-direct {v9, v2, v7, v4, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    .line 484
    move v15, v7

    goto :goto_4

    .end local v4    # "childMainMeasureSpec":I
    .local v7, "childMainMeasureSpec":I
    .local v15, "childCrossMeasureSpec":I
    :goto_5
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v2, v0}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 492
    invoke-direct {v9, v0, v2}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 494
    nop

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    .line 494
    invoke-static {v1, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    .line 497
    .end local v1    # "childState":I
    .local v22, "childState":I
    iget v4, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 498
    invoke-direct {v9, v0, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    .line 499
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v1, v1, v23

    .line 500
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v23, v1, v23

    .line 497
    move-object v1, v0

    move-object v0, v9

    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    move-object/from16 v32, v1

    .end local v1    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    move/from16 v33, v2

    move/from16 v2, v31

    .end local v2    # "i":I
    .local v33, "i":I
    move v13, v3

    move/from16 v3, v30

    .end local v3    # "sumCrossSize":I
    .local v13, "sumCrossSize":I
    move/from16 v34, v15

    move/from16 v11, v28

    const/4 v15, 0x1

    .end local v15    # "childCrossMeasureSpec":I
    .end local v28    # "childCount":I
    .local v11, "childCount":I
    .local v34, "childCrossMeasureSpec":I
    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v5, v23

    .end local v5    # "childMainSize":I
    .local v26, "childMainSize":I
    move-object v8, v6

    const/4 v15, -0x1

    move-object v6, v10

    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v8, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move/from16 v35, v11

    move-object/from16 v15, v29

    move v11, v7

    move/from16 v7, v33

    .end local v7    # "childMainMeasureSpec":I
    .end local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v11, "childMainMeasureSpec":I
    .local v15, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v35, "childCount":I
    move/from16 v36, v11

    move/from16 v21, v30

    move-object v11, v8

    move/from16 v8, v20

    .end local v8    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v30    # "mainSize":I
    .local v11, "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v21, "mainSize":I
    .local v36, "childMainMeasureSpec":I
    invoke-direct/range {v0 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 502
    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-lez v0, :cond_9

    .line 503
    move/from16 v0, v33

    if-lez v0, :cond_8

    .end local v33    # "i":I
    .local v0, "i":I
    add-int/lit8 v5, v0, -0x1

    goto :goto_6

    :cond_8
    move/from16 v5, v27

    :goto_6
    invoke-direct {v9, v15, v11, v5, v13}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 504
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int v3, v13, v1

    .end local v13    # "sumCrossSize":I
    .restart local v3    # "sumCrossSize":I
    goto :goto_7

    .line 507
    .end local v0    # "i":I
    .end local v3    # "sumCrossSize":I
    .restart local v13    # "sumCrossSize":I
    .restart local v33    # "i":I
    :cond_9
    move/from16 v0, v33

    move v3, v13

    .end local v13    # "sumCrossSize":I
    .end local v33    # "i":I
    .restart local v0    # "i":I
    .restart local v3    # "sumCrossSize":I
    :goto_7
    if-eqz v14, :cond_b

    .line 508
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 516
    iget-object v1, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v2, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 518
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 519
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 520
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 521
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    .line 516
    invoke-interface {v1, v12, v2, v4}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 522
    .end local v34    # "childCrossMeasureSpec":I
    .local v1, "childCrossMeasureSpec":I
    move-object/from16 v2, v32

    move/from16 v4, v36

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 523
    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .local v2, "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-direct {v9, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    .line 545
    .end local v1    # "childCrossMeasureSpec":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v34    # "childCrossMeasureSpec":I
    .restart local v36    # "childMainMeasureSpec":I
    :cond_a
    move-object/from16 v2, v32

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    goto :goto_8

    .line 526
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v36    # "childMainMeasureSpec":I
    :cond_b
    move-object/from16 v2, v32

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    .line 534
    iget-object v1, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 536
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v5

    iget-object v6, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 537
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 538
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 539
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v6

    .line 534
    invoke-interface {v1, v12, v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 540
    .end local v34    # "childCrossMeasureSpec":I
    .restart local v1    # "childCrossMeasureSpec":I
    invoke-virtual {v2, v1, v4}, Landroid/view/View;->measure(II)V

    .line 541
    invoke-direct {v9, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    .line 545
    .end local v1    # "childCrossMeasureSpec":I
    .restart local v34    # "childCrossMeasureSpec":I
    :cond_c
    :goto_8
    move/from16 v1, v34

    .end local v34    # "childCrossMeasureSpec":I
    .restart local v1    # "childCrossMeasureSpec":I
    :goto_9
    new-instance v5, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v5}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move-object v6, v5

    .line 546
    .end local v11    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v5, 0x1

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 547
    add-int v5, v16, v17

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 548
    iput v0, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 549
    const/4 v5, 0x0

    .line 550
    .end local v20    # "indexInFlexLine":I
    .local v5, "indexInFlexLine":I
    const/high16 v24, -0x80000000

    .line 555
    move/from16 v34, v1

    move v13, v3

    goto :goto_a

    .line 552
    .end local v0    # "i":I
    .end local v1    # "childCrossMeasureSpec":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "sumCrossSize":I
    .end local v4    # "childMainMeasureSpec":I
    .end local v5    # "indexInFlexLine":I
    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v11    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .restart local v13    # "sumCrossSize":I
    .restart local v20    # "indexInFlexLine":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v33    # "i":I
    .restart local v34    # "childCrossMeasureSpec":I
    .restart local v36    # "childMainMeasureSpec":I
    :cond_d
    move-object/from16 v2, v32

    move/from16 v0, v33

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v33    # "i":I
    .end local v36    # "childMainMeasureSpec":I
    .restart local v0    # "i":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 553
    add-int/lit8 v20, v20, 0x1

    .line 555
    move-object v6, v11

    move/from16 v5, v20

    .end local v11    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v20    # "indexInFlexLine":I
    .end local v24    # "largestSizeInCross":I
    .local v1, "largestSizeInCross":I
    .restart local v5    # "indexInFlexLine":I
    .restart local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :goto_a
    move/from16 v1, v24

    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_e

    .line 556
    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    aput v7, v3, v0

    .line 558
    :cond_e
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v7

    .line 559
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 560
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 561
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 562
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 564
    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2, v0, v5, v6}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    .line 566
    nop

    .line 567
    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v3

    .line 568
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    .line 569
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 570
    invoke-interface {v7, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 566
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 574
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 576
    if-eqz v14, :cond_10

    .line 577
    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_f

    .line 578
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 578
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_b

    .line 584
    :cond_f
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v8

    sub-int/2addr v7, v8

    .line 586
    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v8

    add-int/2addr v7, v8

    .line 584
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 590
    :cond_10
    :goto_b
    move/from16 v3, v35

    invoke-direct {v9, v0, v3, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v7

    .end local v35    # "childCount":I
    .local v3, "childCount":I
    if-eqz v7, :cond_11

    .line 591
    invoke-direct {v9, v15, v6, v0, v13}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    .line 592
    iget v7, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v13, v7

    .line 595
    :cond_11
    move/from16 v7, p6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    .line 596
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    .line 597
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    iget v11, v11, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v11, v7, :cond_13

    if-lt v0, v7, :cond_13

    if-nez v25, :cond_13

    .line 605
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v11

    neg-int v11, v11

    .line 606
    .end local v13    # "sumCrossSize":I
    .local v11, "sumCrossSize":I
    const/4 v13, 0x1

    .line 608
    .end local v25    # "reachedToIndex":Z
    .local v13, "reachedToIndex":Z
    move/from16 v25, v13

    goto :goto_c

    .end local v11    # "sumCrossSize":I
    .local v13, "sumCrossSize":I
    .restart local v25    # "reachedToIndex":Z
    :cond_12
    const/16 v23, 0x1

    :cond_13
    move v11, v13

    .end local v13    # "sumCrossSize":I
    .restart local v11    # "sumCrossSize":I
    :goto_c
    move/from16 v13, p4

    if-le v11, v13, :cond_14

    if-eqz v25, :cond_14

    .line 616
    nop

    .line 620
    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    goto :goto_e

    .line 421
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .end local v10    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    .end local v26    # "childMainSize":I
    .end local v34    # "childCrossMeasureSpec":I
    :cond_14
    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    .end local v5    # "indexInFlexLine":I
    .end local v22    # "childState":I
    .local v1, "childState":I
    .restart local v20    # "indexInFlexLine":I
    .restart local v24    # "largestSizeInCross":I
    :goto_d
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p5

    move v4, v3

    move v13, v7

    move v3, v11

    move-object v7, v15

    move/from16 v8, v21

    move/from16 v15, v31

    move-object/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_2

    .line 620
    .end local v0    # "i":I
    .end local v11    # "sumCrossSize":I
    .end local v21    # "mainSize":I
    .end local v31    # "mainMode":I
    .local v3, "sumCrossSize":I
    .local v4, "childCount":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v8, "mainSize":I
    .local v15, "mainMode":I
    :cond_15
    move-object v11, v6

    move/from16 v21, v8

    move/from16 v31, v15

    move-object v15, v7

    move v7, v13

    move v13, v3

    move v3, v4

    move v11, v13

    .end local v4    # "childCount":I
    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v8    # "mainSize":I
    .local v3, "childCount":I
    .restart local v11    # "sumCrossSize":I
    .local v15, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v21    # "mainSize":I
    .restart local v31    # "mainMode":I
    :goto_e
    move-object/from16 v0, p1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 621
    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 215
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 217
    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 244
    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 275
    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 289
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 291
    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 318
    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p6, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 349
    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .locals 5
    .param p2, "fromFlexItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    .line 1951
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    nop

    .line 1952
    nop

    .line 1954
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p2

    .line 1955
    .local v0, "fromFlexLine":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1956
    const/4 v0, 0x0

    .line 1961
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1962
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1961
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1965
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1966
    .local v2, "fillTo":I
    if-le p2, v2, :cond_2

    .line 1967
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 1969
    :cond_2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, p2, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 1972
    :goto_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 1973
    .end local v2    # "fillTo":I
    .local v1, "fillTo":I
    const-wide/16 v2, 0x0

    if-le p2, v1, :cond_3

    .line 1974
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    .line 1976
    :cond_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v4, p2, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 1978
    :goto_2
    return-void
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 3
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;

    .line 150
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 151
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v2

    return-object v2
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 7
    .param p1, "viewBeforeAdded"    # Landroid/view/View;
    .param p2, "indexForViewBeforeAdded"    # I
    .param p3, "paramsForViewBeforeAdded"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "orderCache"    # Landroid/util/SparseIntArray;

    .line 115
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 116
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexboxHelper$Order;>;"
    new-instance v2, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    .line 118
    .local v2, "orderForViewToBeAdded":Lcom/google/android/flexbox/FlexboxHelper$Order;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v4, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz v4, :cond_0

    .line 120
    move-object v4, p3

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 121
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v4

    iput v4, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    goto :goto_0

    .line 123
    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    .line 126
    :goto_0
    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 129
    iput p2, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 130
    move v4, p2

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 131
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    .end local v4    # "i":I
    :cond_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    goto :goto_3

    .line 127
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    .line 138
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, v1, p4}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v3

    return-object v3
.end method

.method determineCrossSize(III)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "paddingAlongCrossAxis"    # I

    move-object/from16 v0, p0

    .line 1400
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    .line 1401
    .local v2, "flexDirection":I
    packed-switch v2, :pswitch_data_0

    .line 1413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flex direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1409
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1410
    .local v3, "mode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1411
    .local v4, "size":I
    goto :goto_0

    .line 1404
    .end local v3    # "mode":I
    .end local v4    # "size":I
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1405
    .restart local v3    # "mode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1406
    .restart local v4    # "size":I
    nop

    .line 1413
    :goto_0
    nop

    .line 1415
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v5

    .line 1416
    .local v5, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_e

    .line 1417
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    move-result v6

    add-int v6, v6, p3

    .line 1418
    .local v6, "totalCrossSize":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 1419
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    sub-int v8, v4, p3

    iput v8, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_8

    .line 1421
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_e

    .line 1422
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    move-result v7

    const/high16 v12, 0x3f800000    # 1.0f

    packed-switch v7, :pswitch_data_1

    .end local v6    # "totalCrossSize":I
    goto/16 :goto_8

    .line 1424
    .restart local v6    # "totalCrossSize":I
    :pswitch_2
    if-lt v6, v4, :cond_1

    .line 1425
    goto/16 :goto_8

    .line 1427
    :cond_1
    sub-int v7, v4, v6

    int-to-float v7, v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1428
    .local v7, "freeSpaceUnit":F
    const/4 v8, 0x0

    .line 1429
    .local v8, "accumulatedError":F
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "flexLinesSize":I
    :goto_1
    if-ge v10, v13, :cond_5

    .line 1430
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexLine;

    .line 1431
    .local v14, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v15, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 1432
    .local v15, "newCrossSizeAsFloat":F
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    if-ne v10, v11, :cond_2

    .line 1433
    add-float/2addr v15, v8

    .line 1434
    const/4 v8, 0x0

    .line 1436
    :cond_2
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1437
    .local v11, "newCrossSize":I
    int-to-float v9, v11

    sub-float v9, v15, v9

    add-float/2addr v8, v9

    .line 1438
    cmpl-float v9, v8, v12

    if-lez v9, :cond_3

    .line 1439
    add-int/lit8 v11, v11, 0x1

    .line 1440
    sub-float/2addr v8, v12

    goto :goto_2

    .line 1441
    :cond_3
    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v16, v8, v9

    if-gez v16, :cond_4

    .line 1442
    add-int/lit8 v11, v11, -0x1

    .line 1443
    add-float/2addr v8, v12

    .line 1445
    :cond_4
    :goto_2
    iput v11, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1429
    .end local v11    # "newCrossSize":I
    .end local v14    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v15    # "newCrossSizeAsFloat":F
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 1447
    .end local v10    # "i":I
    .end local v13    # "flexLinesSize":I
    :cond_5
    goto/16 :goto_8

    .line 1450
    .end local v7    # "freeSpaceUnit":F
    .end local v8    # "accumulatedError":F
    :pswitch_3
    if-lt v6, v4, :cond_6

    .line 1453
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1454
    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v8

    .line 1453
    invoke-interface {v7, v8}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1456
    goto/16 :goto_8

    .line 1460
    :cond_6
    sub-int v7, v4, v6

    .line 1462
    .local v7, "spaceTopAndBottom":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v8, v10

    .line 1463
    .local v8, "numberOfSpaces":I
    div-int/2addr v7, v8

    .line 1464
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v9, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    new-instance v10, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v10}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1466
    .local v10, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v7, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1467
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    .line 1468
    .local v12, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    .end local v12    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_3

    .line 1472
    :cond_7
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v9}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1473
    goto/16 :goto_8

    .line 1476
    .end local v7    # "spaceTopAndBottom":I
    .end local v8    # "numberOfSpaces":I
    .end local v9    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v10    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    :pswitch_4
    if-lt v6, v4, :cond_8

    .line 1477
    goto/16 :goto_8

    .line 1480
    :cond_8
    sub-int v7, v4, v6

    int-to-float v7, v7

    .line 1481
    .local v7, "spaceBetweenFlexLine":F
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 1482
    .restart local v8    # "numberOfSpaces":I
    int-to-float v9, v8

    div-float/2addr v7, v9

    .line 1483
    const/4 v9, 0x0

    .line 1484
    .local v9, "accumulatedError":F
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    .local v11, "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "flexLineSize":I
    :goto_4
    if-ge v13, v14, :cond_d

    .line 1486
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/flexbox/FlexLine;

    .line 1487
    .local v15, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    const/16 v18, 0x1

    add-int/lit8 v12, v16, -0x1

    if-eq v13, v12, :cond_c

    .line 1490
    new-instance v12, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v12}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1491
    .local v12, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v1, v16, -0x2

    if-ne v13, v1, :cond_9

    .line 1494
    add-float v1, v7, v9

    .line 1495
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1496
    const/4 v9, 0x0

    goto :goto_5

    .line 1498
    :cond_9
    nop

    .line 1499
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1501
    :goto_5
    iget v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v1, v1

    sub-float v1, v7, v1

    add-float/2addr v9, v1

    .line 1503
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v16, v9, v1

    if-lez v16, :cond_a

    .line 1504
    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1505
    sub-float/2addr v9, v1

    goto :goto_6

    .line 1506
    :cond_a
    const/16 v16, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v17, v9, v10

    if-gez v17, :cond_b

    .line 1507
    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1508
    add-float/2addr v9, v1

    .line 1510
    :cond_b
    :goto_6
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v12    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v15    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_7

    .line 1485
    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move v12, v1

    const/4 v10, 0x2

    goto :goto_4

    .line 1513
    .end local v13    # "i":I
    .end local v14    # "flexLineSize":I
    :cond_d
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v11}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1514
    goto :goto_8

    .line 1517
    .end local v7    # "spaceBetweenFlexLine":F
    .end local v8    # "numberOfSpaces":I
    .end local v9    # "accumulatedError":F
    .end local v11    # "newFlexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 1518
    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    .line 1517
    invoke-interface {v1, v7}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    .line 1520
    goto :goto_8

    .line 1523
    :pswitch_6
    sub-int v1, v4, v6

    .line 1524
    .local v1, "spaceTop":I
    new-instance v7, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v7}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 1525
    .local v7, "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    iput v1, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1526
    invoke-interface {v5, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1527
    nop

    .line 1535
    .end local v1    # "spaceTop":I
    .end local v6    # "totalCrossSize":I
    .end local v7    # "dummySpaceFlexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_e
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method determineMainSize(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    .line 906
    return-void
.end method

.method determineMainSize(III)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fromIndex"    # I

    move-object/from16 v13, p0

    .line 920
    move/from16 v14, p3

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {v13, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 921
    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt v14, v0, :cond_0

    .line 922
    return-void

    .line 926
    :cond_0
    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v15

    .line 927
    .local v15, "flexDirection":I
    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :pswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 943
    .local v0, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 944
    .local v2, "heightSize":I
    if-ne v0, v1, :cond_1

    .line 945
    move v1, v2

    .local v1, "mainSize":I
    goto :goto_0

    .line 947
    .end local v1    # "mainSize":I
    :cond_1
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 949
    .restart local v1    # "mainSize":I
    :goto_0
    iget-object v3, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v3

    iget-object v4, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 950
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 951
    .local v3, "paddingAlongMainAxis":I
    goto :goto_2

    .line 930
    .end local v0    # "heightMode":I
    .end local v1    # "mainSize":I
    .end local v2    # "heightSize":I
    .end local v3    # "paddingAlongMainAxis":I
    :pswitch_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 931
    .local v0, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 932
    .local v2, "widthSize":I
    if-ne v0, v1, :cond_2

    .line 933
    move v1, v2

    .restart local v1    # "mainSize":I
    goto :goto_1

    .line 935
    .end local v1    # "mainSize":I
    :cond_2
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    .line 937
    .restart local v1    # "mainSize":I
    :goto_1
    iget-object v3, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v3

    iget-object v4, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    .line 938
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 939
    .restart local v3    # "paddingAlongMainAxis":I
    nop

    .line 953
    .end local v0    # "widthMode":I
    .end local v2    # "widthSize":I
    .end local v3    # "paddingAlongMainAxis":I
    .local v5, "paddingAlongMainAxis":I
    :goto_2
    move v5, v3

    move v12, v1

    .line 956
    .end local v1    # "mainSize":I
    .local v12, "mainSize":I
    const/4 v0, 0x0

    .line 957
    .local v0, "flexLineIndex":I
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_3

    .line 958
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v1, v14

    .line 960
    .end local v0    # "flexLineIndex":I
    .local v16, "flexLineIndex":I
    :cond_3
    move/from16 v16, v0

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v11

    .line 961
    .local v11, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move/from16 v0, v16

    .local v0, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v10, v0

    .end local v0    # "i":I
    .local v1, "size":I
    .local v10, "i":I
    :goto_3
    move v9, v1

    .end local v1    # "size":I
    .local v9, "size":I
    if-ge v10, v9, :cond_5

    .line 962
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 963
    .local v8, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v0, v12, :cond_4

    .line 964
    const/4 v6, 0x0

    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v8

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 961
    move v2, v9

    move v3, v10

    move-object v4, v11

    move/from16 v17, v12

    goto :goto_4

    .line 967
    :cond_4
    const/4 v0, 0x0

    move-object v6, v13

    move/from16 v7, p1

    move-object v1, v8

    move/from16 v8, p2

    .end local v8    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .local v1, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move v2, v9

    move-object v9, v1

    .end local v9    # "size":I
    .local v2, "size":I
    move v3, v10

    move v10, v12

    .end local v10    # "i":I
    .local v3, "i":I
    move-object v4, v11

    move v11, v5

    .end local v11    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .local v4, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move/from16 v17, v12

    move v12, v0

    .end local v12    # "mainSize":I
    .local v17, "mainSize":I
    invoke-direct/range {v6 .. v12}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    .line 961
    .end local v1    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :goto_4
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .restart local v10    # "i":I
    move v1, v2

    move-object v11, v4

    move/from16 v12, v17

    goto :goto_3

    .line 971
    .end local v2    # "size":I
    .end local v4    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v10    # "i":I
    .end local v17    # "mainSize":I
    .restart local v11    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v12    # "mainSize":I
    :cond_5
    move-object v4, v11

    move/from16 v17, v12

    .end local v11    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v12    # "mainSize":I
    .restart local v4    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .restart local v17    # "mainSize":I
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureIndexToFlexLine(I)V
    .locals 2
    .param p1, "size"    # I

    .line 1935
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_1

    .line 1936
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_2

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1938
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1939
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    .line 1940
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    .line 1942
    .end local v0    # "newCapacity":I
    :cond_3
    :goto_2
    return-void
.end method

.method ensureMeasureSpecCache(I)V
    .locals 2
    .param p1, "size"    # I

    .line 1876
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_1

    .line 1877
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_2

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1879
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1880
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    .line 1881
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    .line 1883
    .end local v0    # "newCapacity":I
    :cond_3
    :goto_2
    return-void
.end method

.method ensureMeasuredSizeCache(I)V
    .locals 2
    .param p1, "size"    # I

    .line 1866
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_1

    .line 1867
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_2

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 1869
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1870
    .local v0, "newCapacity":I
    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    .line 1871
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    .line 1873
    .end local v0    # "newCapacity":I
    :cond_3
    :goto_2
    return-void
.end method

.method extractHigherInt(J)I
    .locals 2
    .param p1, "longValue"    # J

    .line 1900
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method extractLowerInt(J)I
    .locals 1
    .param p1, "longValue"    # J

    .line 1891
    long-to-int v0, p1

    return v0
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 8
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;

    .line 176
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 177
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 178
    return v2

    .line 180
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 181
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 182
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_1

    .line 183
    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    .line 186
    .local v5, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v6

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 187
    return v2

    .line 180
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1730
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1731
    .local v1, "alignItems":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1734
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1736
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1737
    .local v2, "crossSize":I
    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1749
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 1750
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1751
    .local v3, "marginTop":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1752
    add-int v4, p4, v3

    add-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    .line 1753
    .end local v3    # "marginTop":I
    goto/16 :goto_0

    .line 1754
    :cond_1
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int/2addr v3, v4

    .line 1756
    .local v3, "marginBottom":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1757
    sub-int v4, p4, v3

    sub-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    .line 1759
    .end local v3    # "marginBottom":I
    goto/16 :goto_0

    .line 1775
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    .line 1776
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    .line 1777
    .local v4, "topFromCrossAxis":I
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 1778
    add-int v3, p4, v4

    add-int v5, p4, v4

    .line 1779
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1778
    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1781
    :cond_2
    sub-int v3, p4, v4

    sub-int v5, p4, v4

    .line 1782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1781
    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    .end local v4    # "topFromCrossAxis":I
    goto :goto_0

    .line 1761
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 1762
    add-int v3, p4, v2

    .line 1763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p4, v2

    .line 1764
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1762
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1768
    :cond_3
    sub-int v3, p4, v2

    .line 1769
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1771
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1768
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    .line 1773
    goto :goto_0

    .line 1740
    :pswitch_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_4

    .line 1741
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v3, p4

    .line 1742
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v4, p6

    .line 1741
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1744
    :cond_4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    sub-int v3, p4, v3

    .line 1745
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int v4, p6, v4

    .line 1744
    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    .line 1747
    nop

    .line 1786
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flexLine"    # Lcom/google/android/flexbox/FlexLine;
    .param p3, "isRtl"    # Z
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .line 1813
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 1814
    .local v0, "flexItem":Lcom/google/android/flexbox/FlexItem;
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    .line 1815
    .local v1, "alignItems":I
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1818
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    .line 1820
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1821
    .local v2, "crossSize":I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1851
    :pswitch_0
    nop

    .line 1852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1853
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    .line 1854
    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1855
    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1856
    .local v4, "leftFromCrossAxis":I
    if-nez p3, :cond_1

    .line 1857
    add-int v5, p4, v4

    add-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1859
    :cond_1
    sub-int v5, p4, v4

    sub-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "leftFromCrossAxis":I
    goto :goto_0

    .line 1834
    :pswitch_1
    if-nez p3, :cond_2

    .line 1835
    add-int v3, p4, v2

    .line 1836
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p6, v2

    .line 1838
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1835
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1843
    :cond_2
    sub-int v3, p4, v2

    .line 1844
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 1843
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    .line 1849
    goto :goto_0

    .line 1825
    :pswitch_2
    if-nez p3, :cond_3

    .line 1826
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    add-int/2addr v3, p4

    .line 1827
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, p6

    .line 1826
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1829
    :cond_3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v3

    sub-int v3, p4, v3

    .line 1830
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int v4, p6, v4

    .line 1829
    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    .line 1832
    nop

    .line 1863
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method makeCombinedLong(II)J
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1917
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method stretchViews()V
    .locals 1

    .line 1558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    .line 1559
    return-void
.end method

.method stretchViews(I)V
    .locals 14
    .param p1, "fromIndex"    # I

    .line 1574
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1575
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    .line 1578
    .local v0, "flexDirection":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1579
    const/4 v1, 0x0

    .line 1580
    .local v1, "flexLineIndex":I
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_1

    .line 1581
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v3, p1

    .line 1583
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    .line 1584
    .local v3, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    move v4, v1

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 1585
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    .line 1586
    .local v6, "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/4 v7, 0x0

    .local v7, "j":I
    iget v8, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .local v8, "itemCount":I
    :goto_1
    if-ge v7, v8, :cond_6

    .line 1587
    iget v9, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v9, v7

    .line 1588
    .local v9, "viewIndex":I
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v10

    if-lt v7, v10, :cond_2

    .line 1589
    goto :goto_2

    .line 1591
    :cond_2
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    .line 1592
    .local v10, "view":Landroid/view/View;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    .line 1593
    goto :goto_2

    .line 1595
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 1596
    .local v11, "flexItem":Lcom/google/android/flexbox/FlexItem;
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 1597
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    if-eq v12, v2, :cond_4

    .line 1598
    goto :goto_2

    .line 1600
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 1610
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid flex direction: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1607
    :pswitch_0
    iget v12, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v12, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 1608
    goto :goto_2

    .line 1603
    :pswitch_1
    iget v12, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v12, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    .line 1604
    nop

    .line 1586
    .end local v9    # "viewIndex":I
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "flexItem":Lcom/google/android/flexbox/FlexItem;
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1584
    .end local v6    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v7    # "j":I
    .end local v8    # "itemCount":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1615
    .end local v1    # "flexLineIndex":I
    .end local v3    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_7
    goto :goto_6

    .line 1616
    :cond_8
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 1617
    .local v2, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget-object v3, v2, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1618
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 1619
    .local v5, "view":Landroid/view/View;
    packed-switch v0, :pswitch_data_1

    .line 1629
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid flex direction: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1626
    :pswitch_2
    iget v6, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 1627
    goto :goto_5

    .line 1622
    :pswitch_3
    iget v6, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    .line 1623
    nop

    .line 1632
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "view":Landroid/view/View;
    :goto_5
    goto :goto_4

    .line 1633
    .end local v2    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_9
    goto :goto_3

    .line 1635
    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
