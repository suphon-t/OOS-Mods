.class abstract Landroid/support/design/widget/HeaderScrollingViewBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 47
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 160
    if-nez p0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .line 154
    iget v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->overlayTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v0

    iget v2, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->overlayTop:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v1

    .line 154
    :goto_0
    return v1
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 187
    iget v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .line 173
    iget v0, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 12
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 105
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "header":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 109
    nop

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 111
    .local v2, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v9, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 112
    .local v9, "available":Landroid/graphics/Rect;
    nop

    .line 113
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    .line 115
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    .line 116
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 112
    invoke-virtual {v9, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v10

    .line 119
    .local v10, "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    if-eqz v10, :cond_0

    .line 120
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    iget v3, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 126
    iget v3, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 129
    :cond_0
    iget-object v11, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 130
    .local v11, "out":Landroid/graphics/Rect;
    iget v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 131
    invoke-static {v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v3

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 130
    move-object v6, v9

    move-object v7, v11

    move v8, p3

    invoke-static/range {v3 .. v8}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 138
    invoke-virtual {p0, v1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    .line 140
    .local v3, "overlap":I
    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 141
    iget v4, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 142
    .end local v2    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "overlap":I
    .end local v9    # "available":Landroid/graphics/Rect;
    .end local v10    # "parentInsets":Landroid/support/v4/view/WindowInsetsCompat;
    .end local v11    # "out":Landroid/graphics/Rect;
    goto :goto_0

    .line 144
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 145
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 147
    :goto_0
    return-void
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 15
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    move-object v0, p0

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .local v1, "childLpHeight":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    move-object/from16 v5, p2

    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v0, v3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 66
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    move-object/from16 v5, p2

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 71
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 74
    return v6

    .line 78
    :cond_2
    move-object/from16 v5, p2

    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 79
    .local v7, "availableHeight":I
    if-nez v7, :cond_4

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    .line 84
    .end local v7    # "availableHeight":I
    .local v13, "availableHeight":I
    :cond_4
    move v13, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v0, v4}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v8

    add-int v14, v7, v8

    .line 85
    .local v14, "height":I
    if-ne v1, v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    :cond_5
    const/high16 v2, -0x80000000

    .line 86
    :goto_1
    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 93
    .local v2, "heightMeasureSpec":I
    move-object/from16 v7, p1

    move-object v8, v5

    move/from16 v9, p3

    move/from16 v10, p4

    move v11, v2

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 96
    return v6

    .line 99
    .end local v2    # "heightMeasureSpec":I
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "header":Landroid/view/View;
    .end local v13    # "availableHeight":I
    .end local v14    # "height":I
    :goto_2
    const/4 v2, 0x0

    return v2
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .line 182
    iput p1, p0, Landroid/support/design/widget/HeaderScrollingViewBehavior;->overlayTop:I

    .line 183
    return-void
.end method
