.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 45
    sget-object v1, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 48
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 49
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 50
    .local v5, "attr":I
    packed-switch v5, :pswitch_data_0

    .end local v5    # "attr":I
    goto :goto_1

    .line 55
    .restart local v5    # "attr":I
    :pswitch_0
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    .line 56
    goto :goto_1

    .line 52
    :pswitch_1
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 53
    goto :goto_1

    .line 58
    :pswitch_2
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    .line 48
    .end local v5    # "attr":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v1

    .line 107
    .local v1, "isRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    .line 108
    .local v2, "children":I
    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v3, v4

    .line 109
    .local v3, "rows":I
    const/4 v4, 0x0

    .line 110
    .local v4, "y":I
    move v6, v4

    const/4 v4, 0x0

    .local v4, "row":I
    .local v6, "y":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 111
    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 112
    .local v7, "x":I
    :goto_1
    const/4 v8, 0x0

    .line 113
    .local v8, "maxHeight":I
    iget v9, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int/2addr v9, v4

    .line 114
    .local v9, "startOfRow":I
    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v10, v9

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 115
    .local v10, "endOfRow":I
    move v11, v7

    move v7, v9

    .local v7, "i":I
    .local v11, "x":I
    :goto_2
    if-ge v7, v10, :cond_3

    .line 116
    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 117
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 118
    .local v13, "width":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 119
    .local v14, "height":I
    if-eqz v1, :cond_1

    .line 120
    sub-int/2addr v11, v13

    .line 122
    :cond_1
    add-int v15, v11, v13

    add-int v5, v6, v14

    invoke-virtual {v12, v11, v6, v15, v5}, Landroid/view/View;->layout(IIII)V

    .line 123
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 124
    if-eqz v1, :cond_2

    .line 125
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v5

    goto :goto_3

    .line 127
    :cond_2
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v13

    add-int/2addr v11, v5

    .line 115
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "width":I
    .end local v14    # "height":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 130
    .end local v7    # "i":I
    :cond_3
    add-int/2addr v6, v8

    .line 131
    if-lez v4, :cond_4

    .line 132
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v6, v5

    .line 110
    .end local v8    # "maxHeight":I
    .end local v9    # "startOfRow":I
    .end local v10    # "endOfRow":I
    .end local v11    # "x":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v4    # "row":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 68
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 73
    .local v1, "width":I
    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v2, v3

    .line 74
    .local v2, "childWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 75
    .local v4, "childWidthSpec":I
    const/4 v5, 0x0

    .line 76
    .local v5, "childHeightSpec":I
    const/4 v6, 0x0

    .line 77
    .local v6, "totalHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v7

    .line 78
    .local v7, "children":I
    iget v8, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v8, v9

    .line 79
    .local v8, "rows":I
    move v10, v6

    const/4 v6, 0x0

    .local v6, "row":I
    .local v10, "totalHeight":I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 80
    iget v11, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int/2addr v11, v6

    .line 81
    .local v11, "startOfRow":I
    iget v12, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v12, v11

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 82
    .local v12, "endOfRow":I
    const/4 v13, 0x0

    .line 83
    .local v13, "maxHeight":I
    move v14, v13

    move v13, v11

    .local v13, "i":I
    .local v14, "maxHeight":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 84
    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 85
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15, v4, v5}, Landroid/view/View;->measure(II)V

    .line 86
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 83
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 88
    .end local v13    # "i":I
    :cond_0
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 89
    .local v9, "maxHeightSpec":I
    move v13, v11

    .restart local v13    # "i":I
    :goto_2
    if-ge v13, v12, :cond_2

    .line 90
    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 91
    .restart local v15    # "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v14, :cond_1

    .line 92
    invoke-virtual {v15, v4, v9}, Landroid/view/View;->measure(II)V

    .line 89
    .end local v15    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_2

    .line 95
    .end local v13    # "i":I
    :cond_2
    add-int/2addr v10, v14

    .line 96
    if-lez v6, :cond_3

    .line 97
    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v10, v3

    .line 79
    .end local v9    # "maxHeightSpec":I
    .end local v11    # "startOfRow":I
    .end local v12    # "endOfRow":I
    .end local v14    # "maxHeight":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    .line 101
    .end local v6    # "row":I
    :cond_4
    move/from16 v3, p2

    const/4 v6, 0x0

    invoke-static {v10, v3, v6}, Lcom/android/systemui/qs/PseudoGridView;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    .line 102
    return-void

    .line 69
    .end local v1    # "width":I
    .end local v2    # "childWidth":I
    .end local v4    # "childWidthSpec":I
    .end local v5    # "childHeightSpec":I
    .end local v7    # "children":I
    .end local v8    # "rows":I
    .end local v10    # "totalHeight":I
    :cond_5
    move/from16 v3, p2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Needs a maximum width"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
