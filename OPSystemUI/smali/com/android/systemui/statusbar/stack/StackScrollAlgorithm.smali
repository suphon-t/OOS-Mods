.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mHeadsUpInset:F

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mPinnedZTranslationExtra:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return v0
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 177
    instance-of v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    return v1

    .line 180
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 181
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    return v1

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 495
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v0

    .line 496
    .local v0, "maxHeadsUpTranslation":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v2

    add-float/2addr v1, v2

    .line 497
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    add-float/2addr v1, v2

    .line 498
    .local v1, "maxShelfPosition":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 499
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 500
    .local v2, "bottomPosition":F
    iget v3, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 501
    .local v3, "newTranslation":F
    iget v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    sub-float v5, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 503
    iput v3, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 504
    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 3
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 485
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v0

    .line 486
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 485
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 487
    .local v0, "newTranslation":F
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    iget v2, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 488
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 487
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 489
    iput v0, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 490
    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "childViewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 517
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v0

    .line 522
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 523
    .local v0, "shelfStart":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAppearing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 525
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 527
    :cond_1
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 528
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 529
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isExpandAnimationRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->hasExpandingChild()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 530
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 531
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 533
    :cond_3
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 106
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 107
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    iget-object v2, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 109
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 110
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 111
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3, p1, p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 107
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 4
    .param p1, "increasedPadding"    # Ljava/lang/Float;

    .line 338
    if-nez p1, :cond_0

    .line 339
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    return v0

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 341
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v1, v1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 341
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0

    .line 346
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 349
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    .line 346
    invoke-static {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 7
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 215
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 217
    .local v2, "draggedView":Landroid/view/View;
    iget-object v3, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 218
    .local v3, "childIndex":I
    if-ltz v3, :cond_1

    iget-object v4, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 219
    iget-object v4, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 220
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 226
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 228
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 233
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 235
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 237
    .end local v2    # "draggedView":Landroid/view/View;
    .end local v3    # "childIndex":I
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    goto :goto_0

    .line 238
    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 21
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 245
    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v5

    .line 247
    .local v5, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v6

    .line 251
    .local v6, "scrollY":I
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 252
    int-to-float v7, v6

    add-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v7

    .line 256
    .local v7, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 257
    .local v8, "childCount":I
    iget-object v9, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v9, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 259
    iget-object v9, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, "notGoneIndex":I
    const/4 v10, 0x0

    .line 262
    .local v10, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 264
    const/4 v11, 0x1

    goto :goto_0

    .line 263
    :cond_0
    nop

    .line 264
    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v8

    .line 270
    .local v11, "firstHiddenIndex":I
    :goto_0
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_d

    .line 271
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    .line 272
    .local v12, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_c

    .line 273
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v13

    if-ne v12, v13, :cond_2

    .line 274
    nop

    .line 270
    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_5

    .line 276
    :cond_2
    if-lt v3, v11, :cond_3

    .line 278
    const/4 v10, 0x0

    .line 280
    :cond_3
    invoke-direct {v0, v1, v2, v9, v12}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v9

    .line 281
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v13

    .line 282
    .local v13, "increasedPadding":F
    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_8

    .line 283
    iget-object v14, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    if-eqz v10, :cond_7

    .line 285
    iget-object v14, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 286
    .local v14, "prevValue":Ljava/lang/Float;
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v15

    .line 287
    .local v15, "newValue":F
    if-eqz v14, :cond_6

    .line 288
    move/from16 v18, v5

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v5

    .line 289
    .local v5, "prevPadding":F
    .local v18, "bottomOverScroll":F
    const/16 v16, 0x0

    cmpl-float v17, v13, v16

    if-lez v17, :cond_4

    .line 290
    invoke-static {v5, v15, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .line 301
    move/from16 v19, v6

    goto :goto_2

    .line 294
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpl-float v16, v17, v16

    if-lez v16, :cond_5

    .line 295
    nop

    .line 298
    move/from16 v19, v6

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 295
    .end local v6    # "scrollY":I
    .local v19, "scrollY":I
    invoke-static {v15, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v15

    .end local v5    # "prevPadding":F
    goto :goto_2

    .line 301
    .end local v19    # "scrollY":I
    .restart local v6    # "scrollY":I
    :cond_5
    move/from16 v19, v6

    .end local v6    # "scrollY":I
    .restart local v19    # "scrollY":I
    goto :goto_2

    .end local v18    # "bottomOverScroll":F
    .end local v19    # "scrollY":I
    .local v5, "bottomOverScroll":F
    .restart local v6    # "scrollY":I
    :cond_6
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "bottomOverScroll":F
    .end local v6    # "scrollY":I
    .restart local v18    # "bottomOverScroll":F
    .restart local v19    # "scrollY":I
    :goto_2
    iget-object v5, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v14    # "prevValue":Ljava/lang/Float;
    .end local v15    # "newValue":F
    goto :goto_3

    .line 309
    .end local v18    # "bottomOverScroll":F
    .end local v19    # "scrollY":I
    .restart local v5    # "bottomOverScroll":F
    .restart local v6    # "scrollY":I
    :cond_7
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "bottomOverScroll":F
    .end local v6    # "scrollY":I
    .restart local v18    # "bottomOverScroll":F
    .restart local v19    # "scrollY":I
    goto :goto_3

    .line 303
    .end local v18    # "bottomOverScroll":F
    .end local v19    # "scrollY":I
    .restart local v5    # "bottomOverScroll":F
    .restart local v6    # "scrollY":I
    :cond_8
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "bottomOverScroll":F
    .end local v6    # "scrollY":I
    .restart local v18    # "bottomOverScroll":F
    .restart local v19    # "scrollY":I
    if-eqz v10, :cond_9

    .line 306
    iget-object v5, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v5

    .line 307
    .local v5, "newValue":F
    iget-object v6, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v6, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v5    # "newValue":F
    :cond_9
    :goto_3
    instance-of v5, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_b

    .line 310
    move-object v5, v12

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 313
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    nop

    .line 314
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    .line 315
    .local v6, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v6, :cond_b

    .line 316
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 317
    .local v15, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    move-object/from16 v20, v5

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 318
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v20, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    nop

    .line 319
    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 320
    .local v0, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v9, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 321
    add-int/lit8 v9, v9, 0x1

    .line 323
    .end local v0    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v15    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_a
    nop

    .line 316
    move-object/from16 v5, v20

    move-object/from16 v0, p0

    goto :goto_4

    .line 326
    .end local v6    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_b
    move-object v0, v12

    .line 270
    .end local v10    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v12    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v13    # "increasedPadding":F
    .local v0, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    move-object v10, v0

    goto :goto_5

    .end local v0    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v18    # "bottomOverScroll":F
    .end local v19    # "scrollY":I
    .local v5, "bottomOverScroll":F
    .local v6, "scrollY":I
    .restart local v10    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_c
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "bottomOverScroll":F
    .end local v6    # "scrollY":I
    .restart local v18    # "bottomOverScroll":F
    .restart local v19    # "scrollY":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 329
    .end local v3    # "i":I
    .end local v18    # "bottomOverScroll":F
    .end local v19    # "scrollY":I
    .restart local v5    # "bottomOverScroll":F
    .restart local v6    # "scrollY":I
    :cond_d
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "bottomOverScroll":F
    .end local v6    # "scrollY":I
    .restart local v18    # "bottomOverScroll":F
    .restart local v19    # "scrollY":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingNotification()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 330
    .local v0, "expandingNotification":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_f

    .line 331
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 332
    iget-object v3, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_6

    .line 333
    :cond_e
    iget-object v3, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_6

    .line 334
    :cond_f
    const/4 v3, -0x1

    .line 330
    :goto_6
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->access$002(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)I

    .line 335
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 68
    nop

    .line 69
    const v1, 0x7f07038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 70
    const v1, 0x7f0703a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 71
    const v1, 0x7f070608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 72
    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 73
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    const v2, 0x7f0701e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 75
    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 77
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 17
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v0, p2

    .line 139
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    nop

    .line 139
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v1

    .line 140
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "drawStart":F
    :goto_0
    const/4 v2, 0x0

    .line 143
    .local v2, "previousNotificationEnd":F
    const/4 v3, 0x0

    .line 144
    .local v3, "previousNotificationStart":F
    iget-object v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 145
    .local v4, "childCount":I
    move v6, v3

    move v3, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v3, "previousNotificationEnd":F
    .local v6, "previousNotificationStart":F
    :goto_1
    if-ge v2, v4, :cond_7

    .line 146
    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableView;

    .line 147
    .local v7, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    .line 148
    .local v9, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v10, :cond_2

    .line 149
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 150
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 152
    :cond_2
    iget v10, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 153
    .local v10, "newYTranslation":F
    iget v11, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    .line 154
    .local v11, "newHeight":F
    add-float v12, v10, v11

    .line 155
    .local v12, "newNotificationEnd":F
    instance-of v13, v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_3

    move-object v13, v7

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 156
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 157
    .local v13, "isHeadsUp":Z
    :goto_2
    move-object/from16 v14, p0

    iget-boolean v15, v14, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v15, :cond_5

    iget-boolean v15, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-nez v15, :cond_5

    cmpg-float v15, v10, v3

    if-gez v15, :cond_5

    if-eqz v13, :cond_4

    .line 159
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 161
    :cond_4
    sub-float v15, v3, v10

    .line 162
    .local v15, "overlapAmount":F
    float-to-int v5, v15

    iput v5, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 163
    .end local v15    # "overlapAmount":F
    nop

    .line 167
    const/4 v5, 0x0

    goto :goto_3

    .line 164
    :cond_5
    const/4 v5, 0x0

    iput v5, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 167
    :goto_3
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v15

    if-nez v15, :cond_6

    .line 170
    move v3, v12

    .line 171
    move v6, v10

    .line 145
    .end local v7    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v9    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v10    # "newYTranslation":F
    .end local v11    # "newHeight":F
    .end local v12    # "newNotificationEnd":F
    .end local v13    # "isHeadsUp":Z
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v2    # "i":I
    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v8, p1

    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 15
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 192
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v1

    .line 193
    .local v1, "dimmed":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isFullyDark()Z

    move-result v2

    .line 194
    .local v2, "dark":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    .line 195
    .local v3, "hideSensitive":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v4

    .line 196
    .local v4, "activatedChild":Landroid/view/View;
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 197
    .local v5, "childCount":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 198
    iget-object v8, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 199
    .local v8, "child":Landroid/view/View;
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v10

    .line 200
    .local v10, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 201
    iput-boolean v2, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 202
    iput-boolean v3, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 203
    if-ne v4, v8, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v6

    .line 204
    .local v11, "isActivatedChild":Z
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v11, :cond_1

    .line 205
    iget v12, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 197
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v11    # "isActivatedChild":Z
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 208
    .end local v7    # "i":I
    :cond_2
    move-object/from16 v9, p2

    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 434
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 435
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 436
    .local v1, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    if-ge v1, v0, :cond_8

    .line 437
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 438
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_0

    .line 439
    goto/16 :goto_2

    .line 441
    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 442
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_1

    .line 443
    goto/16 :goto_2

    .line 445
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    .line 446
    .local v6, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/4 v7, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v8, :cond_2

    .line 447
    move-object v3, v5

    .line 448
    iput v7, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 450
    :cond_2
    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    .line 451
    .local v7, "isTopEntry":Z
    :goto_1
    iget v8, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v9, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 452
    .local v8, "unmodifiedEndLocation":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 453
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mustStayOnScreen()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v9, :cond_4

    .line 455
    invoke-direct {p0, p3, v5, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 456
    if-nez v1, :cond_4

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 458
    invoke-direct {p0, p3, v5, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 459
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 463
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 464
    iget v9, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 465
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 466
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 467
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    .line 468
    .local v9, "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-eqz v9, :cond_6

    if-nez v7, :cond_6

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v10, :cond_5

    iget v10, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpg-float v10, v8, v10

    if-gez v10, :cond_6

    .line 472
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    iput v10, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 473
    iget v10, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v11, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 477
    .end local v9    # "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_6
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 478
    iput-boolean v2, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 436
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v7    # "isTopEntry":Z
    .end local v8    # "unmodifiedEndLocation":F
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 481
    .end local v1    # "i":I
    :cond_8
    :goto_2
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 356
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 357
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 358
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 p3, p3, 0x1

    .line 360
    return p3
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 9
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 374
    iget v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    .line 375
    .local v0, "currentYPosition":F
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 376
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 377
    move-object v3, p0

    move v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F

    move-result v0

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 1
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 131
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    .line 132
    .local v0, "shelf":Lcom/android/systemui/statusbar/NotificationShelf;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 135
    :cond_0
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 118
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, "childCount":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v1

    .line 120
    .local v1, "belowSpeedBump":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 121
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 122
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 126
    .local v5, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-lt v3, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 120
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 9
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 552
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 553
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 554
    .local v1, "childrenOnTop":F
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 555
    move-object v3, p0

    move v4, v2

    move v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F

    move-result v1

    .line 554
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 558
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 536
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 537
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 538
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 540
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 429
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 85
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 87
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 89
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 91
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 93
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 97
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 98
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 99
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 100
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 101
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .line 611
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 612
    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F
    .locals 16
    .param p1, "i"    # I
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p5, "currentYPosition"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 385
    iget-object v3, v2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 386
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 387
    .local v5, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 388
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v7

    .line 389
    .local v7, "paddingAfterChild":I
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v8

    .line 390
    .local v8, "childHeight":I
    move/from16 v9, p5

    iput v9, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 391
    instance-of v10, v3, Lcom/android/systemui/statusbar/FooterView;

    .line 392
    .local v10, "isFooterView":Z
    instance-of v11, v3, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 394
    .local v11, "isEmptyShadeView":Z
    const/4 v12, 0x4

    iput v12, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 395
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v13

    add-float/2addr v12, v13

    .line 396
    .local v12, "inset":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getIndexOfExpandingNotification()I

    move-result v13

    if-gt v1, v13, :cond_0

    .line 397
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandAnimationTopChange()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 399
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    iget v13, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_2

    .line 402
    iget v13, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v15, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v15, v15

    add-float/2addr v13, v15

    add-float/2addr v13, v12

    .line 403
    .local v13, "end":F
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v15

    cmpg-float v15, v13, v15

    if-gez v15, :cond_1

    const/4 v6, 0x1

    nop

    :cond_1
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 405
    .end local v13    # "end":F
    :cond_2
    if-eqz v10, :cond_3

    .line 406
    iget v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 407
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v13

    sub-int/2addr v13, v8

    int-to-float v13, v13

    .line 406
    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 415
    :goto_0
    move-object/from16 v6, p4

    goto :goto_1

    .line 408
    :cond_3
    if-eqz v11, :cond_4

    .line 409
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v6

    sub-int/2addr v6, v8

    int-to-float v6, v6

    .line 410
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v13

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v13, v15

    add-float/2addr v6, v13

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_0

    .line 412
    :cond_4
    move-object/from16 v6, p4

    invoke-direct {v0, v3, v5, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 415
    :goto_1
    iget v13, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v15, v8

    add-float/2addr v13, v15

    int-to-float v15, v7

    add-float/2addr v13, v15

    .line 416
    .end local p5    # "currentYPosition":F
    .local v13, "currentYPosition":F
    cmpg-float v9, v13, v14

    if-gtz v9, :cond_5

    .line 417
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 419
    :cond_5
    iget v9, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v9, :cond_6

    .line 420
    const-string v9, "StackScrollAlgorithm"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to assign location for child "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_6
    iget v9, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    add-float/2addr v9, v12

    iput v9, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 424
    return v13
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F
    .locals 10
    .param p1, "i"    # I
    .param p2, "childrenOnTop"    # F
    .param p3, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 563
    iget-object v0, p4, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 564
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    .line 565
    .local v1, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v2

    .line 566
    .local v2, "zDistanceBetweenElements":I
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v3

    int-to-float v3, v3

    .line 567
    .local v3, "baseZ":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-nez v4, :cond_1

    .line 568
    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 569
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v6

    .line 570
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    add-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 571
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_0

    .line 572
    add-float/2addr p2, v5

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v4

    .line 575
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v6

    add-float/2addr v4, v6

    iget v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    sub-float/2addr v4, v6

    .line 576
    .local v4, "overlap":F
    iget v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v6, v6

    div-float v6, v4, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr p2, v6

    .line 578
    .end local v4    # "overlap":F
    :goto_0
    int-to-float v4, v2

    mul-float/2addr v4, p2

    add-float/2addr v4, v3

    iput v4, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_3

    .line 580
    :cond_1
    if-nez p1, :cond_4

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v4

    .line 585
    .local v4, "shelfHeight":I
    :goto_1
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v6, v6

    .line 586
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v7

    add-float/2addr v6, v7

    .line 587
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    add-float/2addr v6, v7

    .line 588
    .local v6, "shelfStart":F
    iget v7, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 590
    .local v7, "notificationEnd":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_3

    .line 591
    iput v3, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_2

    .line 593
    :cond_3
    sub-float v8, v7, v6

    int-to-float v9, v4

    div-float/2addr v8, v9

    .line 594
    .local v8, "factor":F
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 595
    int-to-float v9, v2

    mul-float/2addr v9, v8

    add-float/2addr v9, v3

    iput v9, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 597
    .end local v4    # "shelfHeight":I
    .end local v6    # "shelfStart":F
    .end local v7    # "notificationEnd":F
    .end local v8    # "factor":F
    :goto_2
    goto :goto_3

    .line 598
    :cond_4
    iput v3, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 605
    :goto_3
    iget v4, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeaderVisibleAmount()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 607
    return p2
.end method
