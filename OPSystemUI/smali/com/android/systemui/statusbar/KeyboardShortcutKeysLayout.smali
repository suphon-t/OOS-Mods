.class public final Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "KeyboardShortcutKeysLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private getHorizontalVerticalSpacing()I
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 157
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private isRTL()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private layoutChildrenOnRow(IIIIII)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "fullRowWidth"    # I
    .param p4, "xPos"    # I
    .param p5, "yPos"    # I
    .param p6, "lastHorizontalSpacing"    # I

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    sub-int/2addr v0, p4

    add-int p4, v0, p6

    .line 167
    :cond_0
    move v0, p4

    move p4, p1

    .local v0, "xPos":I
    .local p4, "j":I
    :goto_0
    if-ge p4, p2, :cond_4

    .line 168
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "currentChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 170
    .local v2, "currentChildWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 171
    .local v3, "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p4, p1, :cond_1

    .line 172
    sub-int v4, p3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int v0, v4, v5

    .line 176
    :cond_1
    add-int v4, v0, v2

    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p5

    .line 176
    invoke-virtual {v1, v0, p5, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    add-int/lit8 v4, p2, -0x1

    if-ge p4, v4, :cond_2

    .line 184
    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    .line 185
    :cond_2
    const/4 v4, 0x0

    .line 186
    .local v4, "nextChildWidth":I
    :goto_1
    iget v5, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v5, v4

    sub-int/2addr v0, v5

    .line 187
    .end local v4    # "nextChildWidth":I
    goto :goto_2

    .line 188
    :cond_3
    iget v4, v3, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 167
    .end local v1    # "currentChild":Landroid/view/View;
    .end local v2    # "currentChildWidth":I
    .end local v3    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 191
    .end local p4    # "j":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 103
    instance-of v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    .line 92
    .local v0, "spacing":I
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .locals 2
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getHorizontalVerticalSpacing()I

    move-result v0

    .line 98
    .local v0, "spacing":I
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v1, v0, v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v7, p0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v8

    .line 109
    .local v8, "childCount":I
    sub-int v9, p4, p2

    .line 110
    .local v9, "fullRowWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v0

    sub-int v0, v9, v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v0

    .line 113
    .local v0, "xPos":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v1

    .line 114
    .local v1, "yPos":I
    const/4 v2, 0x0

    .line 116
    .local v2, "lastHorizontalSpacing":I
    const/4 v3, 0x0

    .line 119
    .local v3, "rowStartIdx":I
    move v12, v0

    move v13, v1

    move v14, v2

    move v11, v3

    const/4 v0, 0x0

    .end local v1    # "yPos":I
    .end local v2    # "lastHorizontalSpacing":I
    .end local v3    # "rowStartIdx":I
    .local v0, "i":I
    .local v11, "rowStartIdx":I
    .local v12, "xPos":I
    .local v13, "yPos":I
    .local v14, "lastHorizontalSpacing":I
    :goto_1
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v8, :cond_8

    .line 120
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 121
    .local v5, "currentChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 123
    .local v15, "currentChildWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 125
    .local v4, "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v12, v0

    sub-int/2addr v0, v15

    if-gez v0, :cond_1

    goto :goto_3

    .line 127
    :cond_1
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int v0, v12, v15

    if-le v0, v9, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_2

    :goto_3
    move/from16 v16, v1

    .line 129
    .local v16, "childDoesNotFitOnRow":Z
    if-eqz v16, :cond_5

    .line 131
    move-object v0, v7

    move v1, v11

    move v2, v6

    move v3, v9

    move-object v10, v4

    move v4, v12

    .end local v4    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .local v10, "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    move-object/from16 v17, v5

    move v5, v13

    .end local v5    # "currentChild":Landroid/view/View;
    .local v17, "currentChild":Landroid/view/View;
    move/from16 v18, v6

    move v6, v14

    .end local v6    # "i":I
    .local v18, "i":I
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v0

    sub-int v0, v9, v0

    goto :goto_4

    .line 136
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v0

    :goto_4
    move v12, v0

    .line 137
    iget v0, v7, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    add-int/2addr v13, v0

    .line 138
    move/from16 v0, v18

    .line 141
    .end local v11    # "rowStartIdx":I
    .local v0, "rowStartIdx":I
    move v11, v0

    goto :goto_5

    .end local v0    # "rowStartIdx":I
    .end local v10    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .end local v17    # "currentChild":Landroid/view/View;
    .end local v18    # "i":I
    .restart local v4    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .restart local v5    # "currentChild":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v11    # "rowStartIdx":I
    :cond_5
    move-object v10, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    .end local v4    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .end local v5    # "currentChild":Landroid/view/View;
    .end local v6    # "i":I
    .restart local v10    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .restart local v17    # "currentChild":Landroid/view/View;
    .restart local v18    # "i":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    sub-int v0, v12, v15

    iget v1, v10, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int/2addr v0, v1

    goto :goto_6

    .line 143
    :cond_6
    add-int v0, v12, v15

    iget v1, v10, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v0, v1

    :goto_6
    move v12, v0

    .line 144
    iget v0, v10, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 119
    .end local v10    # "lp":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .end local v14    # "lastHorizontalSpacing":I
    .end local v15    # "currentChildWidth":I
    .end local v16    # "childDoesNotFitOnRow":Z
    .end local v17    # "currentChild":Landroid/view/View;
    .local v0, "lastHorizontalSpacing":I
    move v14, v0

    goto :goto_7

    .end local v0    # "lastHorizontalSpacing":I
    .end local v18    # "i":I
    .restart local v6    # "i":I
    .restart local v14    # "lastHorizontalSpacing":I
    :cond_7
    move/from16 v18, v6

    .end local v6    # "i":I
    .restart local v18    # "i":I
    :goto_7
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .local v0, "i":I
    goto :goto_1

    .line 149
    .end local v0    # "i":I
    :cond_8
    if-ge v11, v8, :cond_9

    .line 150
    move-object v0, v7

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    .line 153
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v0, p0

    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 47
    .local v1, "width":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildCount()I

    move-result v2

    .line 48
    .local v2, "childCount":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 49
    .local v3, "height":I
    const/4 v4, 0x0

    .line 50
    .local v4, "lineHeight":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    .line 51
    .local v5, "xPos":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingTop()I

    move-result v6

    .line 54
    .local v6, "yPos":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_0

    .line 55
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "childHeightMeasureSpec":I
    goto :goto_0

    .line 57
    .end local v7    # "childHeightMeasureSpec":I
    :cond_0
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 60
    .restart local v7    # "childHeightMeasureSpec":I
    :goto_0
    nop

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_3

    .line 61
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 62
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    .line 63
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    .line 64
    .local v11, "layoutParams":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v12, v7}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 67
    .local v12, "childWidth":I
    nop

    .line 68
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v11, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    add-int/2addr v13, v14

    .line 67
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 70
    add-int v13, v5, v12

    if-le v13, v1, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->getPaddingLeft()I

    move-result v5

    .line 72
    add-int/2addr v6, v4

    .line 74
    :cond_1
    iget v13, v11, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v13, v12

    add-int/2addr v5, v13

    .line 60
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "layoutParams":Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;
    .end local v12    # "childWidth":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 77
    .end local v8    # "i":I
    :cond_3
    iput v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    .line 79
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-nez v8, :cond_4

    .line 80
    add-int v3, v6, v4

    goto :goto_2

    .line 81
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_5

    .line 82
    add-int v8, v6, v4

    if-ge v8, v3, :cond_5

    .line 83
    add-int v3, v6, v4

    .line 86
    :cond_5
    :goto_2
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->setMeasuredDimension(II)V

    .line 87
    return-void
.end method
