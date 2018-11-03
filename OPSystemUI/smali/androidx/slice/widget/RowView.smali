.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/view/View;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mImageSize:I

.field private mIsHeader:Z

.field private mIsSingleItem:Z

.field private mLastUpdatedText:Landroid/widget/TextView;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/widget/ProgressBar;

.field private mRangeHeight:I

.field private mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field private mRowContent:Landroidx/slice/widget/RowContent;

.field private mRowIndex:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    .line 113
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 119
    sget v0, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    .line 122
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    .line 123
    sget v0, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    .line 124
    sget v0, Landroidx/slice/view/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    .line 125
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeHeight:I

    .line 129
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/widget/RowView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/RowView;

    .line 80
    iget v0, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    return v0
.end method

.method static synthetic access$100(Landroidx/slice/widget/RowView;)Landroidx/slice/widget/RowContent;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/RowView;

    .line 80
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    return-object v0
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 8
    .param p1, "actionContent"    # Landroidx/slice/core/SliceActionImpl;
    .param p2, "color"    # I
    .param p3, "container"    # Landroid/view/ViewGroup;
    .param p4, "isStart"    # Z

    .line 444
    new-instance v0, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;)V

    .line 445
    .local v0, "sav":Landroidx/slice/widget/SliceActionView;
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 447
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    .line 448
    .local v1, "isToggle":Z
    xor-int/lit8 v2, v1, 0x1

    .line 449
    .local v2, "actionType":I
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    move v4, v3

    .line 450
    .local v4, "rowType":I
    :goto_0
    new-instance v5, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v6

    iget v7, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v5, v6, v2, v4, v7}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 451
    .local v5, "info":Landroidx/slice/widget/EventInfo;
    if-eqz p4, :cond_1

    .line 452
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v3, v6}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 454
    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, p1, v5, v3, p2}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;I)V

    .line 455
    if-eqz v1, :cond_2

    .line 456
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_2
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 11
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;
    .param p2, "color"    # I
    .param p3, "isStart"    # Z

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "icon":Landroid/support/v4/graphics/drawable/IconCompat;
    const/4 v1, 0x0

    .line 467
    .local v1, "imageMode":I
    const/4 v2, 0x0

    .line 468
    .local v2, "timeStamp":Landroidx/slice/SliceItem;
    if-eqz p3, :cond_0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    .line 469
    .local v3, "container":Landroid/view/ViewGroup;
    :goto_0
    const-string v4, "slice"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    const-string v4, "action"

    .line 470
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 471
    :cond_1
    const-string v4, "shortcut"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v4, p2, v3, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 473
    return v5

    .line 475
    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Landroidx/slice/SliceItem;

    .line 479
    :cond_3
    const-string v4, "image"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 480
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 481
    const-string v4, "no_tint"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    move v1, v4

    goto :goto_1

    .line 482
    :cond_4
    const-string v4, "long"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 483
    move-object v2, p1

    .line 485
    :cond_5
    :goto_1
    const/4 v4, 0x0

    .line 486
    .local v4, "addedView":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 487
    if-nez v1, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    move v7, v6

    .line 488
    .local v7, "isIcon":Z
    :goto_2
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 489
    .local v8, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    if-eqz v7, :cond_7

    const/4 v9, -0x1

    if-eq p2, v9, :cond_7

    .line 491
    invoke-virtual {v8, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 493
    :cond_7
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 496
    iget v10, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 497
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    if-eqz v7, :cond_8

    iget v10, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_8
    move v10, v6

    .line 499
    .local v10, "p":I
    :goto_3
    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 500
    move-object v4, v8

    .line 501
    .end local v7    # "isIcon":Z
    .end local v8    # "iv":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "p":I
    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    .line 502
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 503
    .local v7, "tv":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/slice/widget/SliceViewUtil;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget v8, p0, Landroidx/slice/widget/RowView;->mSubtitleSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 505
    iget v8, p0, Landroidx/slice/widget/RowView;->mSubtitleColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    move-object v4, v7

    .line 509
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    move v5, v6

    :goto_5
    return v5
.end method

.method private addRange(Landroidx/slice/SliceItem;)V
    .locals 12
    .param p1, "range"    # Landroidx/slice/SliceItem;

    .line 378
    const-string v0, "action"

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 379
    .local v0, "isSeekBar":Z
    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/SeekBar;

    .line 380
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/ProgressBar;

    .line 381
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 383
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 384
    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 385
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_1
    const-string v3, "int"

    const-string v5, "min"

    invoke-static {p1, v3, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 389
    .local v3, "min":Landroidx/slice/SliceItem;
    const/4 v5, 0x0

    .line 390
    .local v5, "minValue":I
    if-eqz v3, :cond_2

    .line 391
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v5

    .line 393
    :cond_2
    const-string v6, "int"

    const-string v7, "max"

    invoke-static {p1, v6, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 394
    .local v6, "max":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_3

    .line 395
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getInt()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 397
    :cond_3
    const-string v7, "int"

    const-string/jumbo v8, "value"

    invoke-static {p1, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    .line 398
    .local v7, "progress":Landroidx/slice/SliceItem;
    if-eqz v7, :cond_4

    .line 399
    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getInt()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 401
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    .line 403
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    .line 404
    if-eqz v0, :cond_7

    .line 405
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v8}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v8

    .line 406
    .local v8, "thumb":Landroidx/slice/SliceItem;
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    check-cast v9, Landroid/widget/SeekBar;

    .line 407
    .local v9, "seekBar":Landroid/widget/SeekBar;
    if-eqz v8, :cond_5

    .line 408
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 409
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_5

    .line 410
    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 413
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v9}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 414
    .local v10, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    if-eq v11, v4, :cond_6

    if-eqz v10, :cond_6

    .line 415
    iget v4, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v10, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 416
    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_6
    move v4, v5

    .line 419
    .local v4, "finalMinValue":I
    new-instance v11, Landroidx/slice/widget/RowView$1;

    invoke-direct {v11, p0, v4, p1}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;ILandroidx/slice/SliceItem;)V

    invoke-virtual {v9, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 437
    .end local v4    # "finalMinValue":I
    .end local v8    # "thumb":Landroidx/slice/SliceItem;
    .end local v9    # "seekBar":Landroid/widget/SeekBar;
    .end local v10    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void
.end method

.method private addSubtitle(Landroidx/slice/SliceItem;)V
    .locals 8
    .param p1, "subtitleItem"    # Landroidx/slice/SliceItem;

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "subtitleTimeString":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowLastUpdated:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-wide v4, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/slice/view/R$string;->abc_slice_updated:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    .line 343
    invoke-static {v6, v7}, Landroidx/slice/widget/SliceViewUtil;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 342
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 346
    .local v1, "subtitle":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    const-string v4, "partial"

    .line 347
    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    nop

    .line 348
    .local v2, "subtitleExists":Z
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 349
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v5, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v5, :cond_4

    iget v5, p0, Landroidx/slice/widget/RowView;->mHeaderSubtitleSize:I

    :goto_2
    int-to-float v5, v5

    goto :goto_3

    :cond_4
    iget v5, p0, Landroidx/slice/widget/RowView;->mSubtitleSize:I

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget v5, p0, Landroidx/slice/widget/RowView;->mSubtitleColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-boolean v4, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/slice/widget/RowView;->mVerticalHeaderTextPadding:I

    goto :goto_4

    :cond_5
    iget v4, p0, Landroidx/slice/widget/RowView;->mVerticalTextPadding:I

    .line 355
    .local v4, "verticalPadding":I
    :goto_4
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v4, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 357
    .end local v4    # "verticalPadding":I
    :cond_6
    if-eqz v0, :cond_9

    .line 358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_7
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 362
    .local v4, "sp":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 363
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_8

    iget v6, p0, Landroidx/slice/widget/RowView;->mHeaderSubtitleSize:I

    :goto_5
    int-to-float v6, v6

    goto :goto_6

    :cond_8
    iget v6, p0, Landroidx/slice/widget/RowView;->mSubtitleSize:I

    goto :goto_5

    :goto_6
    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 366
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget v6, p0, Landroidx/slice/widget/RowView;->mSubtitleColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_9
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_a

    move v5, v6

    goto :goto_7

    :cond_a
    move v5, v3

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 374
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 375
    return-void
.end method

.method private getRowContentHeight()I
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result v0

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    .line 157
    :goto_1
    nop

    .line 158
    .local v0, "rowHeight":I
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 159
    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeHeight:I

    sub-int/2addr v0, v1

    .line 161
    :cond_2
    return v0
.end method

.method private populateViews()V
    .locals 17

    .line 234
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->resetView()V

    .line 235
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 238
    :cond_0
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-direct/range {p0 .. p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    .line 240
    return-void

    .line 242
    :cond_1
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 243
    .local v1, "contentDescr":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 244
    iget-object v2, v0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    iget-object v2, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 247
    .local v2, "startItem":Landroidx/slice/SliceItem;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget v5, v0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-lez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    .line 248
    .local v5, "showStart":Z
    :goto_0
    if-eqz v5, :cond_4

    .line 249
    iget v6, v0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {v0, v2, v6, v4}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v5

    .line 251
    :cond_4
    iget-object v6, v0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5

    move v8, v3

    goto :goto_1

    :cond_5
    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v6, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v6}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v6

    .line 254
    .local v6, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_6

    .line 255
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_6
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v9, v0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_7

    iget v9, v0, Landroidx/slice/widget/RowView;->mHeaderTitleSize:I

    :goto_2
    int-to-float v9, v9

    goto :goto_3

    :cond_7
    iget v9, v0, Landroidx/slice/widget/RowView;->mTitleSize:I

    goto :goto_2

    :goto_3
    invoke-virtual {v8, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget v9, v0, Landroidx/slice/widget/RowView;->mTitleColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    move v9, v3

    goto :goto_4

    :cond_8
    const/16 v9, 0x8

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v8

    if-ne v8, v4, :cond_9

    iget-object v8, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 264
    invoke-virtual {v8}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v8

    goto :goto_5

    :cond_9
    iget-object v8, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 265
    invoke-virtual {v8}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v8

    .line 266
    .local v8, "subtitleItem":Landroidx/slice/SliceItem;
    :goto_5
    invoke-direct {v0, v8}, Landroidx/slice/widget/RowView;->addSubtitle(Landroidx/slice/SliceItem;)V

    .line 268
    iget-object v9, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v9}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v9

    .line 269
    .local v9, "primaryAction":Landroidx/slice/SliceItem;
    if-eqz v9, :cond_a

    if-eq v9, v2, :cond_a

    .line 270
    new-instance v10, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v10, v9}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v10, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 271
    iget-object v10, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v10}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 273
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v10, v0, Landroidx/slice/widget/RowView;->mTintColor:I

    iget-object v11, v0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, v7, v10, v11, v3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    .line 275
    iget-object v3, v0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v3, v4}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 276
    return-void

    .line 280
    :cond_a
    iget-object v10, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v10}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v10

    .line 281
    .local v10, "range":Landroidx/slice/SliceItem;
    if-eqz v10, :cond_c

    .line 282
    iget-object v3, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v3, :cond_b

    .line 283
    iget-object v3, v0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {v0, v3, v4}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 285
    :cond_b
    invoke-direct {v0, v10}, Landroidx/slice/widget/RowView;->addRange(Landroidx/slice/SliceItem;)V

    .line 286
    return-void

    .line 290
    :cond_c
    iget-object v11, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 291
    .local v11, "endItems":Ljava/util/List;
    iget-object v12, v0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v12, :cond_d

    iget-object v12, v0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 293
    iget-object v11, v0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 296
    :cond_d
    const/4 v12, 0x0

    .line 297
    .local v12, "endItemCount":I
    const/4 v13, 0x0

    .line 298
    .local v13, "firstItemIsADefaultToggle":Z
    const/4 v14, 0x0

    .line 299
    .local v14, "endAction":Landroidx/slice/SliceItem;
    move-object v15, v14

    move v14, v12

    move v12, v3

    .local v12, "i":I
    .local v14, "endItemCount":I
    .local v15, "endAction":Landroidx/slice/SliceItem;
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v12, v7, :cond_12

    .line 300
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroidx/slice/SliceItem;

    if-eqz v7, :cond_e

    .line 301
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/SliceItem;

    goto :goto_7

    .line 302
    :cond_e
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    .line 303
    .local v7, "endItem":Landroidx/slice/SliceItem;
    :goto_7
    const/4 v4, 0x3

    if-ge v14, v4, :cond_11

    .line 304
    iget v4, v0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {v0, v7, v4, v3}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 305
    if-nez v15, :cond_f

    const-string v4, "action"

    invoke-static {v7, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 306
    move-object v4, v7

    .line 308
    .end local v15    # "endAction":Landroidx/slice/SliceItem;
    .local v4, "endAction":Landroidx/slice/SliceItem;
    move-object v15, v4

    .end local v4    # "endAction":Landroidx/slice/SliceItem;
    .restart local v15    # "endAction":Landroidx/slice/SliceItem;
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 309
    const/4 v4, 0x1

    if-ne v14, v4, :cond_11

    .line 310
    iget-object v4, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 311
    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v3, "image"

    invoke-static {v4, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    .line 299
    .end local v7    # "endItem":Landroidx/slice/SliceItem;
    .end local v13    # "firstItemIsADefaultToggle":Z
    .local v3, "firstItemIsADefaultToggle":Z
    :goto_8
    move v13, v3

    .end local v3    # "firstItemIsADefaultToggle":Z
    .restart local v13    # "firstItemIsADefaultToggle":Z
    :cond_11
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_6

    .line 318
    .end local v12    # "i":I
    :cond_12
    iget-object v3, v0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    iget-object v4, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v4, :cond_13

    if-eqz v13, :cond_13

    const/4 v4, 0x0

    goto :goto_9

    :cond_13
    const/16 v4, 0x8

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    if-eqz v2, :cond_14

    const-string v3, "action"

    .line 321
    invoke-static {v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    .line 322
    .local v3, "hasStartAction":Z
    :goto_a
    if-eqz v15, :cond_15

    const/16 v16, 0x1

    goto :goto_b

    :cond_15
    const/16 v16, 0x0

    :goto_b
    move/from16 v4, v16

    .line 324
    .local v4, "hasEndItemAction":Z
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_18

    .line 327
    if-nez v4, :cond_17

    if-eqz v3, :cond_16

    goto :goto_c

    :cond_16
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    goto :goto_d

    :cond_17
    :goto_c
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    :goto_d
    const/4 v12, 0x1

    invoke-direct {v0, v7, v12}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_10

    .line 328
    :cond_18
    const/4 v12, 0x1

    if-eq v4, v3, :cond_1c

    if-eq v14, v12, :cond_19

    if-eqz v3, :cond_1c

    .line 330
    :cond_19
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 331
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/slice/core/SliceActionImpl;

    iput-object v7, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_f

    .line 333
    :cond_1a
    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    if-eqz v15, :cond_1b

    move-object v12, v15

    goto :goto_e

    :cond_1b
    move-object v12, v2

    :goto_e
    invoke-direct {v7, v12}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v7, v0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 335
    :goto_f
    iget-object v7, v0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-direct {v0, v7, v12}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 337
    :cond_1c
    :goto_10
    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "isClickable"    # Z

    .line 562
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    if-eqz p2, :cond_1

    .line 564
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    .line 563
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 567
    return-void
.end method

.method private showSeeMore()V
    .locals 3

    .line 513
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 515
    .local v0, "b":Landroid/widget/Button;
    new-instance v1, Landroidx/slice/widget/RowView$2;

    invoke-direct {v1, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 531
    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 533
    :cond_0
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 534
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    .line 146
    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getActualHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSmallHeight()I
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 539
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/slice/widget/SliceActionView;

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    .line 543
    .local v0, "sav":Landroidx/slice/widget/SliceActionView;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->toggle()V

    .line 546
    .end local v0    # "sav":Landroidx/slice/widget/SliceActionView;
    :cond_0
    goto :goto_0

    .line 548
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 549
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_2

    .line 550
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 552
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    :cond_2
    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 212
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 213
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    .line 215
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v4

    iget v5, p0, Landroidx/slice/widget/RowView;->mRangeHeight:I

    add-int/2addr v4, v5

    .line 214
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 191
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result v0

    .line 192
    .local v0, "totalHeight":I
    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    .line 193
    .local v1, "rowHeight":I
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 195
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 197
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, p1, p2}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    .line 202
    iget v3, p0, Landroidx/slice/widget/RowView;->mRangeHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 203
    .local v3, "rangeMeasureSpec":I
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4, p1, v3}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    .line 206
    .end local v3    # "rangeMeasureSpec":I
    :cond_2
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 207
    .local v2, "totalHeightSpec":I
    invoke-super {p0, p1, v2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    .line 208
    return-void
.end method

.method public resetView()V
    .locals 3

    .line 571
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    .line 573
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 574
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    .line 575
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 576
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 577
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 582
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    .line 583
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    .line 586
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    .line 588
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 590
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    .line 592
    :cond_1
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1
    .param p1, "showLastUpdated"    # Z

    .line 183
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 184
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->populateViews()V

    .line 187
    :cond_0
    return-void
.end method

.method public setSingleItem(Z)V
    .locals 0
    .param p1, "isSingleItem"    # Z

    .line 135
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    .line 136
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 176
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->populateViews()V

    .line 179
    :cond_0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 3
    .param p1, "slice"    # Landroidx/slice/SliceItem;
    .param p2, "isHeader"    # Z
    .param p3, "index"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 225
    invoke-virtual {p0, p5}, Landroidx/slice/widget/RowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 226
    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 227
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    .line 229
    new-instance v0, Landroidx/slice/widget/RowContent;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    invoke-direct {v0, v1, p1, v2}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 230
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->populateViews()V

    .line 231
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 166
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 167
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->populateViews()V

    .line 171
    :cond_0
    return-void
.end method
