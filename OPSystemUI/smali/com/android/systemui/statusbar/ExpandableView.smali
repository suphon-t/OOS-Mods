.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 57
    return-void
.end method


# virtual methods
.method public areChildrenExpanded()Z
    .locals 1

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 519
    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-object v0
.end method

.method public getActualHeight()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .line 373
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 376
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 378
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 379
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 380
    return-void
.end method

.method public getClipBottomAmount()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 364
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 365
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 366
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 367
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 368
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 369
    return-void
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderVisibleAmount()F
    .locals 1

    .line 402
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "ignoreTemporaryStates"    # Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOutlineAlpha()F
    .locals 1

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTranslation()F
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public hasExpandingChild()Z
    .locals 1

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 440
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAboveShelf()Z
    .locals 1

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingPosition()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return v0
.end method

.method public isChildInGroup()Z
    .locals 1

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isExpandAnimationRunning()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public isTransformingIntoShelf()Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 294
    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 109
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 111
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 61
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 62
    .local v2, "givenSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getPaddingStart()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getPaddingEnd()I

    move-result v4

    add-int/2addr v3, v4

    .line 63
    .local v3, "viewHorizontalPadding":I
    const v4, 0x7fffffff

    .line 64
    .local v4, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 65
    .local v5, "heightMode":I
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 66
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 68
    :cond_0
    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 69
    .local v6, "newHeightSpec":I
    const/4 v7, 0x0

    .line 70
    .local v7, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v8

    .line 71
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/high16 v10, 0x40000000    # 2.0f

    if-ge v9, v8, :cond_5

    .line 72
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 73
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 74
    goto :goto_2

    .line 76
    :cond_1
    move v12, v6

    .line 77
    .local v12, "childHeightSpec":I
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 78
    .local v13, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 79
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v14, :cond_3

    .line 81
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v14, v4, :cond_2

    .line 82
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_1

    .line 83
    :cond_2
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v14, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_1
    move v12, v10

    .line 85
    :cond_3
    iget v10, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v3, v10}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v11, v10, v12}, Landroid/view/View;->measure(II)V

    .line 88
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 89
    .local v10, "childHeight":I
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 90
    .end local v10    # "childHeight":I
    goto :goto_2

    .line 91
    :cond_4
    iget-object v10, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childHeightSpec":I
    .end local v13    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 94
    .end local v9    # "i":I
    :cond_5
    if-ne v5, v10, :cond_6

    .line 95
    move v9, v2

    goto :goto_3

    :cond_6
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 96
    .local v9, "ownHeight":I
    :goto_3
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 97
    iget-object v10, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 98
    .restart local v11    # "child":Landroid/view/View;
    nop

    .line 99
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    invoke-static {v1, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v12

    invoke-virtual {v11, v12, v6}, Landroid/view/View;->measure(II)V

    .line 101
    .end local v11    # "child":Landroid/view/View;
    goto :goto_4

    .line 102
    :cond_7
    iget-object v10, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 103
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 104
    .local v10, "width":I
    invoke-virtual {v0, v10, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method public abstract performAddAnimation(JJZ)V
.end method

.method public abstract performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
.end method

.method public pointInView(FFF)Z
    .locals 4
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .line 115
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 116
    .local v0, "top":F
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    .line 117
    .local v1, "bottom":F
    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sub-float v2, v0, p3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableView;->mRight:I

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, p3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    add-float v2, v1, p3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 146
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 131
    if-eqz p2, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .line 516
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0
    .param p1, "below"    # Z

    .line 326
    return-void
.end method

.method public setChangingPosition(Z)V
    .locals 0
    .param p1, "changingPosition"    # Z

    .line 476
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 477
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 267
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 269
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .line 410
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 412
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 255
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 257
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    .line 214
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .line 203
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 0
    .param p1, "distanceToTopRoundness"    # F

    .line 142
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .line 465
    return-void
.end method

.method public setHeadsUpIsVisible()V
    .locals 0

    .line 510
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .line 239
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .line 232
    return-void
.end method

.method public setInShelf(Z)V
    .locals 0
    .param p1, "inShelf"    # Z

    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    .line 536
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 435
    :cond_0
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .locals 0
    .param p1, "minClipTopAmount"    # I

    .line 427
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 428
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 281
    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0
    .param p1, "shadowAlpha"    # F

    .line 448
    return-void
.end method

.method public setTransformingInShelf(Z)V
    .locals 0
    .param p1, "transformingInShelf"    # Z

    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    .line 548
    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transientContainer"    # Landroid/view/ViewGroup;

    .line 484
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 485
    return-void
.end method

.method public setTranslation(F)V
    .locals 0
    .param p1, "translation"    # F

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationX(F)V

    .line 338
    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1, "willBeGone"    # Z

    .line 419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    .line 420
    return-void
.end method

.method protected shouldClipToActualHeight()Z
    .locals 1

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method protected updateClipping()V
    .locals 6

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 393
    .local v0, "top":I
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 396
    .end local v0    # "top":I
    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 399
    :goto_0
    return-void
.end method

.method public willBeGone()Z
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return v0
.end method
