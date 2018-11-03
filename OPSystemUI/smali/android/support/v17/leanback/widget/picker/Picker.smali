.class public Landroid/support/v17/leanback/widget/picker/Picker;
.super Landroid/widget/FrameLayout;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;,
        Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;,
        Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mAlphaAnimDuration:I

.field private final mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field final mColumnViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/VerticalGridView;",
            ">;"
        }
    .end annotation
.end field

.field mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/picker/PickerColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusedAlpha:F

.field private mInvisibleColumnAlpha:F

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerItemLayoutId:I

.field private mPickerItemTextViewId:I

.field private mPickerView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedColumn:I

.field private mSeparators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUnfocusedAlpha:F

.field private mVisibleColumnAlpha:F

.field private mVisibleItems:F

.field private mVisibleItemsActivated:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    .line 76
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItems:F

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    .line 81
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_picker_item:I

    iput v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    .line 82
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    .line 492
    new-instance v1, Landroid/support/v17/leanback/widget/picker/Picker$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/picker/Picker$1;-><init>(Landroid/support/v17/leanback/widget/picker/Picker;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 166
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->setEnabled(Z)V

    .line 167
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/Picker;->setDescendantFocusability(I)V

    .line 169
    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mFocusedAlpha:F

    .line 170
    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    .line 171
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    .line 174
    const/16 v0, 0xc8

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    .line 177
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 178
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 180
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_picker:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mRootView:Landroid/view/ViewGroup;

    .line 182
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mRootView:Landroid/view/ViewGroup;

    sget v2, Landroid/support/v17/leanback/R$id;->picker:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    .line 183
    return-void
.end method

.method private notifyValueChanged(I)V
    .locals 2
    .param p1, "columnIndex"    # I

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;

    invoke-interface {v1, p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker$PickerValueListener;->onValueChanged(Landroid/support/v17/leanback/widget/picker/Picker;I)V

    .line 329
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "destAlpha"    # F
    .param p4, "startAlpha"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 396
    if-nez p2, :cond_0

    .line 397
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 399
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    .line 401
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mAlphaAnimDuration:I

    int-to-long v1, v1

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 407
    :goto_0
    return-void
.end method

.method private updateColumnSize()V
    .locals 2

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 551
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 5
    .param p1, "columnView"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 556
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 557
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getActivatedVisibleItemCount()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getVisibleItemCount()F

    move-result v1

    .line 558
    .local v1, "itemCount":F
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemHeightPixels()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 559
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getVerticalSpacing()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void
.end method

.method private updateItemFocusable()V
    .locals 6

    .line 564
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    .line 565
    .local v0, "activated":Z
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 566
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 567
    .local v3, "grid":Landroid/support/v17/leanback/widget/VerticalGridView;
    move v4, v1

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 568
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 569
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 567
    .end local v5    # "view":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 565
    .end local v3    # "grid":Landroid/support/v17/leanback/widget/VerticalGridView;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 515
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 517
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 525
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 521
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->performClick()Z

    .line 527
    :cond_1
    return v2

    .line 529
    .end local v0    # "keyCode":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getActivatedVisibleItemCount()F
    .locals 1

    .line 581
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleItemsActivated:F

    return v0
.end method

.method public getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .locals 1
    .param p1, "colIndex"    # I

    .line 192
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    return-object v0
.end method

.method public getColumnsCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getPickerItemHeightPixels()I
    .locals 2

    .line 546
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->picker_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final getPickerItemLayoutId()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    return v0
.end method

.method public final getPickerItemTextViewId()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    .line 700
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    return v0
.end method

.method public getVisibleItemCount()F
    .locals 1

    .line 609
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public onColumnValueChanged(II)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "newValue"    # I

    .line 420
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 421
    .local v0, "column":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 422
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 423
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    .line 425
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 534
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v0

    .line 535
    .local v0, "column":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 536
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 538
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 670
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 672
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/Picker;->setSelectedColumn(I)V

    .line 671
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setActivated(Z)V
    .locals 4
    .param p1, "activated"    # Z

    .line 632
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 633
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 637
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->hasFocus()Z

    move-result v0

    .line 638
    .local v0, "hadFocus":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getSelectedColumn()I

    move-result v1

    .line 649
    .local v1, "column":I
    const/high16 v2, 0x20000

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/Picker;->setDescendantFocusability(I)V

    .line 650
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->requestFocus()Z

    .line 656
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 657
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize()V

    .line 661
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->updateItemFocusable()V

    .line 662
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    .line 663
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 665
    :cond_3
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/Picker;->setDescendantFocusability(I)V

    .line 666
    return-void
.end method

.method public setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 296
    .local v0, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 297
    .local v1, "adapter":Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->notifyDataSetChanged()V

    .line 300
    :cond_0
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 301
    return-void
.end method

.method public setColumnValue(IIZ)V
    .locals 3
    .param p1, "columnIndex"    # I
    .param p2, "value"    # I
    .param p3, "runAnimation"    # Z

    .line 311
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 312
    .local v0, "column":Landroid/support/v17/leanback/widget/picker/PickerColumn;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 313
    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setCurrentValue(I)V

    .line 314
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker;->notifyValueChanged(I)V

    .line 315
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 316
    .local v1, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v1, :cond_1

    .line 317
    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v2

    sub-int v2, p2, v2

    .line 318
    .local v2, "position":I
    if-eqz p3, :cond_0

    .line 319
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 325
    .end local v1    # "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    .end local v2    # "position":I
    :cond_1
    :goto_0
    return-void
.end method

.method public setColumns(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/picker/PickerColumn;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 223
    .local v0, "separator":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 224
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_0

    .line 226
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0    # "separator":Ljava/lang/CharSequence;
    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ne v0, v3, :cond_6

    .line 236
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 239
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_2

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 242
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getColumnsCount()I

    move-result v1

    .line 245
    .local v1, "totalCol":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 246
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_picker_separator:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    .local v3, "separator":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    .end local v3    # "separator":Landroid/widget/TextView;
    :cond_3
    move v3, v2

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 252
    move v9, v3

    .line 253
    .local v9, "colIndex":I
    sget v4, Landroid/support/v17/leanback/R$layout;->lb_picker_column:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 256
    .local v10, "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnSize(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 258
    invoke-virtual {v10, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 260
    invoke-virtual {v10, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setHasFixedSize(Z)V

    .line 261
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v4

    invoke-virtual {v10, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 266
    invoke-virtual {v10, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemViewCacheSize(I)V

    .line 268
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 274
    sget v4, Landroid/support/v17/leanback/R$layout;->lb_picker_separator:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 276
    .local v4, "separator":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    .end local v4    # "separator":Landroid/widget/TextView;
    :cond_4
    new-instance v11, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 281
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemLayoutId()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->getPickerItemTextViewId()I

    move-result v8

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;-><init>(Landroid/support/v17/leanback/widget/picker/Picker;Landroid/content/Context;III)V

    .line 280
    invoke-virtual {v10, v11}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 282
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnChangeListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v10, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 251
    .end local v9    # "colIndex":I
    .end local v10    # "columnView":Landroid/support/v17/leanback/widget/VerticalGridView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 284
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 231
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "totalCol":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Separators size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "equal the size of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Separators size is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". At least one separator must be provided"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOrAnimateAlpha(Landroid/view/View;ZIZ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z
    .param p3, "colIndex"    # I
    .param p4, "animate"    # Z

    .line 374
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq p3, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/Picker;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    .line 375
    .local v6, "columnShownAsActivated":Z
    if-eqz p2, :cond_3

    .line 377
    if-eqz v6, :cond_2

    .line 378
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mFocusedAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 380
    :cond_2
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mUnfocusedAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 384
    :cond_3
    if-eqz v6, :cond_4

    .line 385
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mVisibleColumnAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 387
    :cond_4
    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mInvisibleColumnAlpha:F

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZFFLandroid/view/animation/Interpolator;)V

    .line 391
    :goto_2
    return-void
.end method

.method public setSelectedColumn(I)V
    .locals 2
    .param p1, "columnIndex"    # I

    .line 686
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    if-eq v0, p1, :cond_0

    .line 687
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSelectedColumn:I

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 689
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final setSeparators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    return-void
.end method

.method updateColumnAlpha(IZ)V
    .locals 6
    .param p1, "colIndex"    # I
    .param p2, "animate"    # Z

    .line 359
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 361
    .local v0, "column":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    .line 364
    .local v1, "selected":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 365
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 366
    .local v4, "item":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 367
    if-ne v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {p0, v4, v5, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    .line 364
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .end local v4    # "item":Landroid/view/View;
    goto :goto_0

    .line 370
    .end local v3    # "i":I
    :cond_2
    return-void
.end method
