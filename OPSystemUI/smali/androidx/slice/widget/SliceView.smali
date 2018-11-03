.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SliceView.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroid/arch/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAttrs:Landroid/util/AttributeSet;

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

.field private mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDefStyleAttr:I

.field private mDefStyleRes:I

.field private mDownX:I

.field private mDownY:I

.field private mHandler:Landroid/os/Handler;

.field private mInLongpress:Z

.field private mIsScrollable:Z

.field private mLargeHeight:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMode:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPressing:Z

.field private mShortcutSize:I

.field private mShowActions:Z

.field private mShowLastUpdated:Z

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 169
    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 141
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 142
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 718
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 174
    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/widget/SliceView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceView;

    .line 88
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    return v0
.end method

.method static synthetic access$100(Landroidx/slice/widget/SliceView;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/SliceView;

    .line 88
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/slice/widget/SliceView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceView;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return p1
.end method

.method private applyConfigurations()V
    .locals 4

    .line 642
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 643
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v0, v0, Landroidx/slice/widget/LargeTemplateView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    check-cast v0, Landroidx/slice/widget/LargeTemplateView;

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeTemplateView;->setScrollable(Z)V

    .line 646
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mAttrs:Landroid/util/AttributeSet;

    iget v2, p0, Landroidx/slice/widget/SliceView;->mDefStyleAttr:I

    iget v3, p0, Landroidx/slice/widget/SliceView;->mDefStyleRes:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroid/util/AttributeSet;II)V

    .line 647
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 649
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 654
    :goto_0
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 692
    instance-of v0, p1, Landroidx/slice/widget/ShortcutView;

    if-eqz v0, :cond_0

    .line 693
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    iget v2, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0

    .line 695
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getHeightForMode(I)I
    .locals 3
    .param p1, "maxHeight"    # I

    .line 321
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    .line 325
    .local v0, "mode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 326
    iget v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    return v1

    .line 328
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    .line 329
    invoke-virtual {v1, p1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 330
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v1

    :goto_0
    return v1

    .line 322
    .end local v0    # "mode":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private getTintColor()I
    .locals 3

    .line 679
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 681
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    return v0

    .line 683
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 685
    .local v0, "colorItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_1

    .line 686
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 290
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v2, v3

    .line 302
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr v3, v4

    .line 303
    .local v3, "deltaY":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    .line 304
    .local v4, "distance":I
    iget v5, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v4, v5, :cond_0

    .line 305
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 306
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 312
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "distance":I
    :pswitch_1
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 313
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 314
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 296
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 297
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    nop

    .line 317
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 184
    iput-object p2, p0, Landroidx/slice/widget/SliceView;->mAttrs:Landroid/util/AttributeSet;

    .line 185
    iput p3, p0, Landroidx/slice/widget/SliceView;->mDefStyleAttr:I

    .line 186
    iput p4, p0, Landroidx/slice/widget/SliceView;->mDefStyleRes:I

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    nop

    .line 195
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 197
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    .line 198
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    .line 201
    new-instance v1, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/widget/LargeTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 202
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    .line 203
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 207
    new-instance v1, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 208
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x111112

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ActionRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 212
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 213
    .local v1, "slop":I
    mul-int v2, v1, v1

    iput v2, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    .line 214
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    .line 216
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void

    .line 193
    .end local v1    # "slop":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .locals 3
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 758
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 763
    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 764
    new-instance v0, Landroid/app/slice/SliceMetrics;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/SliceMetrics;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    goto :goto_1

    .line 760
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    .line 767
    :cond_3
    :goto_1
    return-void
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .locals 3
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "info"    # Landroidx/slice/widget/EventInfo;

    .line 783
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    iget v1, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 787
    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 785
    invoke-virtual {v0, v1, v2}, Landroid/app/slice/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    .line 790
    :cond_0
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .line 770
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    if-eqz v0, :cond_1

    .line 771
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logVisible()V

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 775
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroid/app/slice/SliceMetrics;

    invoke-virtual {v0}, Landroid/app/slice/SliceMetrics;->logHidden()V

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 780
    :cond_1
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 706
    packed-switch p0, :pswitch_data_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 708
    :pswitch_0
    const-string v0, "MODE SHORTCUT"

    return-object v0

    .line 712
    :pswitch_1
    const-string v0, "MODE LARGE"

    return-object v0

    .line 710
    :pswitch_2
    const-string v0, "MODE SMALL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateActions()V
    .locals 4

    .line 657
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 667
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    .line 668
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 674
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 676
    :goto_0
    return-void

    .line 659
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 661
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 583
    iget v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    return v0
.end method

.method public isSliceViewClickable()Z
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 226
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 731
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 732
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 735
    :cond_0
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 404
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 405
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 240
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 243
    .local v0, "sa":Landroidx/slice/core/SliceActionImpl;
    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 244
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 245
    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v2, v6, v2

    invoke-direct {v1, v3, v4, v5, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 247
    .local v1, "eventInfo":Landroidx/slice/widget/EventInfo;
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 248
    .local v2, "sliceItem":Landroidx/slice/SliceItem;
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v1, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 249
    invoke-direct {p0, v2, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sa":Landroidx/slice/core/SliceActionImpl;
    .end local v1    # "eventInfo":Landroidx/slice/widget/EventInfo;
    .end local v2    # "sliceItem":Landroidx/slice/SliceItem;
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SliceView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 254
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 257
    :cond_2
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 739
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 741
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 272
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    .local v0, "ret":Z
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 276
    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 390
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 391
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v1

    .line 392
    .local v1, "left":I
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v2

    .line 393
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 394
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v3}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 395
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 397
    invoke-virtual {v5}, Landroidx/slice/widget/ActionRow;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v7}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 395
    invoke-virtual {v3, v1, v4, v5, v6}, Landroidx/slice/widget/ActionRow;->layout(IIII)V

    .line 400
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 335
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 336
    .local v1, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 337
    .local v2, "childWidth":I
    iget v3, v0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v4, 0x3

    if-ne v4, v3, :cond_0

    .line 339
    iget v2, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 340
    iget v3, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v5

    add-int v1, v3, v5

    .line 342
    :cond_0
    iget-object v3, v0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v3}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    iget v3, v0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 345
    .local v3, "actionHeight":I
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 346
    .local v5, "heightAvailable":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 347
    .local v6, "heightMode":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 348
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_3

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    const/4 v8, -0x1

    goto :goto_1

    :cond_4
    move v8, v5

    .line 352
    .local v8, "maxHeight":I
    :goto_1
    invoke-direct {v0, v8}, Landroidx/slice/widget/SliceView;->getHeightForMode(I)I

    move-result v9

    .line 354
    .local v9, "sliceHeight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v10

    sub-int v10, v5, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    .line 355
    .local v10, "height":I
    add-int v11, v9, v3

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v5, v11, :cond_7

    if-nez v6, :cond_5

    goto :goto_2

    .line 365
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_6

    iget v11, v0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int/2addr v11, v3

    if-lt v5, v11, :cond_6

    .line 367
    move v10, v9

    goto :goto_3

    .line 368
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v11

    if-ne v11, v4, :cond_9

    .line 370
    iget v10, v0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    goto :goto_3

    .line 358
    :cond_7
    :goto_2
    if-ne v6, v12, :cond_8

    .line 359
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3

    .line 361
    :cond_8
    move v10, v9

    .line 374
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v4, v11

    .line 375
    .local v4, "childHeight":I
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 376
    .local v11, "childWidthMeasureSpec":I
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 377
    .local v13, "childHeightMeasureSpec":I
    iget-object v14, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v14, v11, v13}, Landroidx/slice/widget/SliceView;->measureChild(Landroid/view/View;II)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    .line 380
    .local v14, "actionPaddedHeight":I
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 381
    .local v12, "actionHeightSpec":I
    iget-object v15, v0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v15, v11, v12}, Landroidx/slice/widget/SliceView;->measureChild(Landroid/view/View;II)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v10, v15

    .line 385
    invoke-virtual {v0, v1, v10}, Landroidx/slice/widget/SliceView;->setMeasuredDimension(II)V

    .line 386
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 282
    .local v0, "ret":Z
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 285
    :cond_0
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 745
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 746
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 749
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 753
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 754
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 755
    return-void
.end method

.method public setClickInfo([I)V
    .locals 0
    .param p1, "info"    # [I

    .line 235
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    .line 236
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 261
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 262
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 268
    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 12
    .param p1, "slice"    # Landroidx/slice/Slice;

    .line 414
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    .line 415
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 416
    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 419
    :cond_1
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 420
    new-instance v0, Landroidx/slice/widget/ListContent;

    .line 421
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mAttrs:Landroid/util/AttributeSet;

    iget v5, p0, Landroidx/slice/widget/SliceView;->mDefStyleAttr:I

    iget v6, p0, Landroidx/slice/widget/SliceView;->mDefStyleRes:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 422
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 424
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 425
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 426
    return-void

    .line 428
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 432
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {v0, v1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    .line 433
    .local v0, "sliceMetadata":Landroidx/slice/SliceMetadata;
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v1

    .line 434
    .local v1, "lastUpdated":J
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v3

    .line 435
    .local v3, "expiry":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 436
    .local v5, "now":J
    iget-object v7, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v7, v1, v2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 437
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    const-wide/16 v10, -0x1

    cmp-long v7, v3, v10

    if-eqz v7, :cond_3

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    move v7, v8

    .line 438
    .local v7, "expired":Z
    :goto_0
    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v11, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v11, :cond_4

    if-eqz v7, :cond_4

    move v8, v9

    nop

    :cond_4
    invoke-virtual {v10, v8}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 441
    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 443
    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v8}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 444
    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v10}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getInt()I

    move-result v10

    invoke-virtual {v8, v10}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_1

    .line 446
    :cond_5
    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 450
    :goto_1
    iget-object v8, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v10, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v8, v10}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 451
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 454
    invoke-direct {p0, v9}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 455
    return-void
.end method
