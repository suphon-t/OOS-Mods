.class public Landroidx/car/widget/ActionBar;
.super Landroid/widget/RelativeLayout;
.source "ActionBar.java"


# instance fields
.field private mActionBarWrapper:Landroid/view/ViewGroup;

.field private mDefaultExpandCollapseView:Landroid/view/View;

.field private final mFixedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpanded:Z

.field private mNumColumns:I

.field private mNumExtraRowsInUse:I

.field private mNumRows:I

.field private mRowsContainer:Landroid/view/ViewGroup;

.field private mSlots:[Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ActionBar;->mFixedViews:Landroid/util/SparseArray;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/car/widget/ActionBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method private createIconButton(Landroid/content/Context;I)Landroid/widget/ImageButton;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResId"    # I

    .line 222
    sget v0, Landroidx/car/R$layout;->action_bar_button:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/car/widget/ActionBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 223
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-object v0
.end method

.method private getSlotIndex(I)I
    .locals 4
    .param p1, "slotPosition"    # I

    .line 175
    const/4 v0, -0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_0
    iget v0, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 181
    :pswitch_1
    iget v2, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    .line 179
    :pswitch_2
    iget v2, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    return v0

    .line 177
    :pswitch_3
    iget v0, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    div-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 129
    sget v2, Landroidx/car/R$layout;->action_bar:I

    invoke-static {v1, v2, v0}, Landroidx/car/widget/ActionBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    sget-object v2, Landroidx/car/R$styleable;->ActionBar:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 133
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v6, Landroidx/car/R$styleable;->ActionBar_columns:I

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    .line 135
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    sget v6, Landroidx/car/R$id;->action_bar_wrapper:I

    invoke-virtual {v0, v6}, Landroidx/car/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/car/widget/ActionBar;->mActionBarWrapper:Landroid/view/ViewGroup;

    .line 138
    sget v6, Landroidx/car/R$id;->rows_container:I

    invoke-virtual {v0, v6}, Landroidx/car/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    .line 139
    iget-object v6, v0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iput v6, v0, Landroidx/car/widget/ActionBar;->mNumRows:I

    .line 140
    iget v6, v0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    iget v7, v0, Landroidx/car/widget/ActionBar;->mNumRows:I

    mul-int/2addr v6, v7

    new-array v6, v6, [Landroid/widget/FrameLayout;

    iput-object v6, v0, Landroidx/car/widget/ActionBar;->mSlots:[Landroid/widget/FrameLayout;

    .line 142
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    iget v8, v0, Landroidx/car/widget/ActionBar;->mNumRows:I

    if-ge v7, v8, :cond_1

    .line 144
    iget-object v8, v0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    iget v9, v0, Landroidx/car/widget/ActionBar;->mNumRows:I

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 146
    .local v8, "mRow":Landroid/view/ViewGroup;
    new-instance v9, Landroid/widget/Space;

    invoke-direct {v9, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 147
    .local v9, "space":Landroid/widget/Space;
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, -0x1

    invoke-direct {v10, v6, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    move v10, v6

    .local v10, "j":I
    :goto_1
    iget v13, v0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    if-ge v10, v13, :cond_0

    .line 152
    iget v13, v0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    mul-int/2addr v13, v7

    add-int/2addr v13, v10

    .line 153
    .local v13, "pos":I
    iget-object v14, v0, Landroidx/car/widget/ActionBar;->mSlots:[Landroid/widget/FrameLayout;

    sget v15, Landroidx/car/R$layout;->action_bar_slot:I

    const/4 v11, 0x0

    invoke-static {v1, v15, v11}, Landroidx/car/widget/ActionBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    aput-object v11, v14, v13

    .line 154
    iget-object v11, v0, Landroidx/car/widget/ActionBar;->mSlots:[Landroid/widget/FrameLayout;

    aget-object v11, v11, v13

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v11, v0, Landroidx/car/widget/ActionBar;->mSlots:[Landroid/widget/FrameLayout;

    aget-object v11, v11, v13

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    .end local v13    # "pos":I
    add-int/lit8 v10, v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    goto :goto_1

    .line 159
    .end local v10    # "j":I
    :cond_0
    new-instance v10, Landroid/widget/Space;

    invoke-direct {v10, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v9, v10

    .line 160
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v10, v6, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v10}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v8    # "mRow":Landroid/view/ViewGroup;
    .end local v9    # "space":Landroid/widget/Space;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 165
    .end local v7    # "i":I
    :cond_1
    sget v6, Landroidx/car/R$drawable;->ic_overflow:I

    invoke-direct {v0, v1, v6}, Landroidx/car/widget/ActionBar;->createIconButton(Landroid/content/Context;I)Landroid/widget/ImageButton;

    move-result-object v6

    iput-object v6, v0, Landroidx/car/widget/ActionBar;->mDefaultExpandCollapseView:Landroid/view/View;

    .line 166
    iget-object v6, v0, Landroidx/car/widget/ActionBar;->mDefaultExpandCollapseView:Landroid/view/View;

    sget v7, Landroidx/car/R$string;->action_bar_expand_collapse_button:I

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v6, v0, Landroidx/car/widget/ActionBar;->mDefaultExpandCollapseView:Landroid/view/View;

    new-instance v7, Landroidx/car/widget/-$$Lambda$ActionBar$drx6HRtUMhkjfXYXVsJvBLkjXX4;

    invoke-direct {v7, v0}, Landroidx/car/widget/-$$Lambda$ActionBar$drx6HRtUMhkjfXYXVsJvBLkjXX4;-><init>(Landroidx/car/widget/ActionBar;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method public static synthetic lambda$init$36(Landroidx/car/widget/ActionBar;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 168
    invoke-direct {p0}, Landroidx/car/widget/ActionBar;->onExpandCollapse()V

    return-void
.end method

.method private onExpandCollapse()V
    .locals 6

    .line 295
    iget-boolean v0, p0, Landroidx/car/widget/ActionBar;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/car/widget/ActionBar;->mIsExpanded:Z

    .line 296
    iget-object v0, p0, Landroidx/car/widget/ActionBar;->mSlots:[Landroid/widget/FrameLayout;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/car/widget/ActionBar;->getSlotIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v1, p0, Landroidx/car/widget/ActionBar;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 298
    invoke-virtual {p0}, Landroidx/car/widget/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/widget/ActionBar;->mIsExpanded:Z

    if-eqz v1, :cond_0

    sget v1, Landroidx/car/R$integer;->car_action_bar_expand_anim_duration:I

    goto :goto_0

    :cond_0
    sget v1, Landroidx/car/R$integer;->car_action_bar_collapse_anim_duration:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 301
    .local v0, "animationDuration":I
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 302
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    .line 303
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    int-to-long v2, v0

    .line 304
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 305
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 306
    .local v1, "set":Landroid/transition/TransitionSet;
    iget-object v2, p0, Landroidx/car/widget/ActionBar;->mActionBarWrapper:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 307
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroidx/car/widget/ActionBar;->mNumExtraRowsInUse:I

    if-ge v3, v4, :cond_2

    .line 308
    iget-object v4, p0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroidx/car/widget/ActionBar;->mIsExpanded:Z

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method getViewAt(II)Landroid/view/View;
    .locals 6
    .param p1, "rowIdx"    # I
    .param p2, "colIdx"    # I

    .line 322
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_2

    iget-object v4, p0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gt p1, v4, :cond_2

    .line 327
    if-ltz p2, :cond_1

    iget v4, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    if-gt p2, v4, :cond_1

    .line 332
    iget-object v0, p0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    add-int/lit8 v3, p2, 0x1

    .line 333
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 334
    .local v0, "slot":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    :cond_0
    return-object v1

    .line 328
    .end local v0    # "slot":Landroid/widget/FrameLayout;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    check-cast v1, Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    iget v2, p0, Landroidx/car/widget/ActionBar;->mNumColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 328
    const-string v2, "Column index out of range (requested: %d, max: %d)"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    check-cast v1, Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v2, p0, Landroidx/car/widget/ActionBar;->mRowsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 323
    const-string v2, "Row index out of range (requested: %d, max: %d)"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
