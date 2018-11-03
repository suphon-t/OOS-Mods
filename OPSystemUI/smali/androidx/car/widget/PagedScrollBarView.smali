.class public Landroidx/car/widget/PagedScrollBarView;
.super Landroid/view/ViewGroup;
.source "PagedScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;,
        Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;,
        Landroidx/car/widget/PagedScrollBarView$PaginationListener;
    }
.end annotation


# instance fields
.field private final mAlphaJumpButton:Landroid/widget/TextView;

.field private final mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

.field private mCustomThumbBackgroundResId:I

.field private mDayNightStyle:I

.field private final mDownButton:Landroid/widget/ImageView;

.field private final mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

.field private final mPaginationInterpolator:Landroid/view/animation/Interpolator;

.field private final mScrollBarThumbWidth:I

.field private final mScrollThumb:Landroid/view/View;

.field private mScrollThumbTrackHeight:I

.field private final mSeparatingMargin:I

.field private final mUpButton:Landroid/widget/ImageView;

.field private final mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

.field private mUseCustomThumbBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    .line 101
    sget v1, Landroidx/car/R$dimen;->car_scroll_bar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollBarThumbWidth:I

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroidx/car/R$layout;->car_paged_scrollbar_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 109
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 110
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>(Landroidx/car/widget/PagedScrollBarView$1;)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    .line 112
    sget v2, Landroidx/car/R$id;->page_up:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v2, Landroidx/car/R$id;->page_down:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v2, Landroidx/car/R$id;->alpha_jump:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Landroidx/car/R$id;->scrollbar_thumb:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    .line 81
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    .line 101
    sget v1, Landroidx/car/R$dimen;->car_scroll_bar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollBarThumbWidth:I

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroidx/car/R$layout;->car_paged_scrollbar_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 109
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 110
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>(Landroidx/car/widget/PagedScrollBarView$1;)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    .line 112
    sget v2, Landroidx/car/R$id;->page_up:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v2, Landroidx/car/R$id;->page_down:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v2, Landroidx/car/R$id;->alpha_jump:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Landroidx/car/R$id;->scrollbar_thumb:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    .line 85
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    .line 101
    sget v1, Landroidx/car/R$dimen;->car_scroll_bar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollBarThumbWidth:I

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroidx/car/R$layout;->car_paged_scrollbar_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 109
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 110
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>(Landroidx/car/widget/PagedScrollBarView$1;)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    .line 112
    sget v2, Landroidx/car/R$id;->page_up:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v2, Landroidx/car/R$id;->page_down:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v2, Landroidx/car/R$id;->alpha_jump:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Landroidx/car/R$id;->scrollbar_thumb:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    .line 89
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    .line 101
    sget v1, Landroidx/car/R$dimen;->car_scroll_bar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollBarThumbWidth:I

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Landroidx/car/R$layout;->car_paged_scrollbar_buttons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 109
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;-><init>(I)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    .line 110
    new-instance v2, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>(Landroidx/car/widget/PagedScrollBarView$1;)V

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    .line 112
    sget v2, Landroidx/car/R$id;->page_up:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v2, Landroidx/car/R$id;->page_down:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v2, Landroidx/car/R$id;->alpha_jump:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v2, Landroidx/car/R$id;->scrollbar_thumb:I

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedScrollBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    .line 94
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    return-void
.end method

.method private calculateScrollThumbLength(II)I
    .locals 2
    .param p1, "range"    # I
    .param p2, "extent"    # I

    .line 492
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iget v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private calculateScrollThumbOffset(III)I
    .locals 3
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "thumbLength"    # I

    .line 510
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->isDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 511
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    sub-int/2addr v1, p3

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private calculateScrollThumbTrackHeight()V
    .locals 3

    .line 359
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget v1, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    .line 362
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 363
    iget v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    iget-object v1, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    goto :goto_0

    .line 365
    :cond_0
    iget v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    iget-object v1, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumbTrackHeight:I

    .line 367
    :goto_0
    return-void
.end method

.method private layoutViewCenteredFromBottom(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bottom"    # I
    .param p3, "availableWidth"    # I

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 417
    .local v0, "viewWidth":I
    sub-int v1, p3, v0

    div-int/lit8 v1, v1, 0x2

    .line 418
    .local v1, "viewLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p2, v2

    add-int v3, v1, v0

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/view/View;->layout(IIII)V

    .line 420
    return-void
.end method

.method private layoutViewCenteredFromTop(Landroid/view/View;II)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "availableWidth"    # I

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 401
    .local v0, "viewWidth":I
    sub-int v1, p3, v0

    div-int/lit8 v1, v1, 0x2

    .line 402
    .local v1, "viewLeft":I
    add-int v2, v1, v0

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    .line 402
    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 404
    return-void
.end method

.method private measureAndLayoutScrollThumb()V
    .locals 3

    .line 382
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->measureScrollThumb()V

    .line 386
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 387
    .local v0, "layoutTop":I
    iget-object v1, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Landroidx/car/widget/PagedScrollBarView;->layoutViewCenteredFromTop(Landroid/view/View;II)V

    .line 388
    return-void
.end method

.method private measureScrollThumb()V
    .locals 3

    .line 370
    iget v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollBarThumbWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 371
    .local v0, "scrollWidth":I
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 374
    .local v1, "scrollHeight":I
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 375
    return-void
.end method

.method private moveY(Landroid/view/View;FZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newPosition"    # F
    .param p3, "animate"    # Z

    .line 517
    if-eqz p3, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 518
    .local v0, "duration":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 519
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 520
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 521
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 523
    return-void
.end method

.method private reloadColors()V
    .locals 6

    .line 429
    iget v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDayNightStyle:I

    packed-switch v0, :pswitch_data_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DayNightStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/car/widget/PagedScrollBarView;->mDayNightStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :pswitch_0
    sget v0, Landroidx/car/R$color;->car_tint_dark:I

    .line 449
    .local v0, "tintResId":I
    sget v1, Landroidx/car/R$color;->car_scrollbar_thumb_dark:I

    .line 450
    .local v1, "thumbColorResId":I
    sget v2, Landroidx/car/R$drawable;->car_button_ripple_background_day:I

    .line 451
    .local v2, "upDownBackgroundResId":I
    goto :goto_0

    .line 442
    .end local v0    # "tintResId":I
    .end local v1    # "thumbColorResId":I
    .end local v2    # "upDownBackgroundResId":I
    :pswitch_1
    sget v0, Landroidx/car/R$color;->car_tint_light:I

    .line 443
    .restart local v0    # "tintResId":I
    sget v1, Landroidx/car/R$color;->car_scrollbar_thumb_light:I

    .line 444
    .restart local v1    # "thumbColorResId":I
    sget v2, Landroidx/car/R$drawable;->car_button_ripple_background_night:I

    .line 445
    .restart local v2    # "upDownBackgroundResId":I
    goto :goto_0

    .line 436
    .end local v0    # "tintResId":I
    .end local v1    # "thumbColorResId":I
    .end local v2    # "upDownBackgroundResId":I
    :pswitch_2
    sget v0, Landroidx/car/R$color;->car_tint_inverse:I

    .line 437
    .restart local v0    # "tintResId":I
    sget v1, Landroidx/car/R$color;->car_scrollbar_thumb_inverse:I

    .line 438
    .restart local v1    # "thumbColorResId":I
    sget v2, Landroidx/car/R$drawable;->car_button_ripple_background_inverse:I

    .line 439
    .restart local v2    # "upDownBackgroundResId":I
    goto :goto_0

    .line 431
    .end local v0    # "tintResId":I
    .end local v1    # "thumbColorResId":I
    .end local v2    # "upDownBackgroundResId":I
    :pswitch_3
    sget v0, Landroidx/car/R$color;->car_tint:I

    .line 432
    .restart local v0    # "tintResId":I
    sget v1, Landroidx/car/R$color;->car_scrollbar_thumb:I

    .line 433
    .restart local v1    # "thumbColorResId":I
    sget v2, Landroidx/car/R$drawable;->car_button_ripple_background:I

    .line 434
    .restart local v2    # "upDownBackgroundResId":I
    nop

    .line 453
    :goto_0
    nop

    .line 456
    iget-boolean v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUseCustomThumbBackground:Z

    if-eqz v3, :cond_0

    .line 457
    iget v1, p0, Landroidx/car/widget/PagedScrollBarView;->mCustomThumbBackgroundResId:I

    .line 460
    :cond_0
    invoke-direct {p0, v1}, Landroidx/car/widget/PagedScrollBarView;->setScrollbarThumbColor(I)V

    .line 462
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 463
    .local v3, "tint":I
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 464
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 466
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 467
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 470
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setScrollbarThumbColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 473
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 474
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 475
    return-void
.end method


# virtual methods
.method getScrollbarThumbColor()I
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public isDownEnabled()Z
    .locals 1

    .line 275
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isDownPressed()Z
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isUpPressed()Z
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 321
    sub-int v0, p4, p2

    .line 322
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 325
    .local v1, "height":I
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getPaddingTop()I

    move-result v2

    .line 328
    .local v2, "layoutTop":I
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2, v0}, Landroidx/car/widget/PagedScrollBarView;->layoutViewCenteredFromTop(Landroid/view/View;II)V

    .line 329
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    .line 332
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 333
    iget v3, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    add-int/2addr v2, v3

    .line 335
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2, v0}, Landroidx/car/widget/PagedScrollBarView;->layoutViewCenteredFromTop(Landroid/view/View;II)V

    .line 337
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    .line 341
    :cond_0
    iget v3, p0, Landroidx/car/widget/PagedScrollBarView;->mSeparatingMargin:I

    add-int/2addr v2, v3

    .line 342
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-direct {p0, v3, v2, v0}, Landroidx/car/widget/PagedScrollBarView;->layoutViewCenteredFromTop(Landroid/view/View;II)V

    .line 345
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    .line 346
    .local v3, "downBottom":I
    iget-object v4, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3, v0}, Landroidx/car/widget/PagedScrollBarView;->layoutViewCenteredFromBottom(Landroid/view/View;II)V

    .line 348
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->calculateScrollThumbTrackHeight()V

    .line 349
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 303
    .local v0, "requestedWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 305
    .local v1, "requestedHeight":I
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 307
    .local v2, "wrapMeasureSpec":I
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 308
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 310
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->measureScrollThumb()V

    .line 312
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 313
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 316
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/car/widget/PagedScrollBarView;->setMeasuredDimension(II)V

    .line 317
    return-void
.end method

.method public setDayNightStyle(I)V
    .locals 0
    .param p1, "dayNightStyle"    # I

    .line 245
    iput p1, p0, Landroidx/car/widget/PagedScrollBarView;->mDayNightStyle:I

    .line 246
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->reloadColors()V

    .line 247
    return-void
.end method

.method public setDownButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method public setDownEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 265
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 267
    return-void
.end method

.method public setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    .line 138
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V

    .line 139
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mDownButtonClickListener:Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V

    .line 140
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButtonClickListener:Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V

    .line 141
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 5
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "animate"    # Z

    .line 180
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/car/widget/PagedScrollBarView;->calculateScrollThumbLength(II)I

    move-result v0

    .line 190
    .local v0, "thumbLength":I
    invoke-direct {p0, p1, p2, v0}, Landroidx/car/widget/PagedScrollBarView;->calculateScrollThumbOffset(III)I

    move-result v1

    .line 193
    .local v1, "thumbOffset":I
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 195
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_2

    .line 196
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 200
    :cond_2
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    int-to-float v4, v1

    invoke-direct {p0, v3, v4, p4}, Landroidx/car/widget/PagedScrollBarView;->moveY(Landroid/view/View;FZ)V

    .line 201
    return-void

    .line 186
    .end local v0    # "thumbLength":I
    .end local v1    # "thumbOffset":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_0
    return-void
.end method

.method setParametersInLayout(III)V
    .locals 5
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I

    .line 219
    invoke-virtual {p0}, Landroidx/car/widget/PagedScrollBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/car/widget/PagedScrollBarView;->calculateScrollThumbLength(II)I

    move-result v0

    .line 224
    .local v0, "thumbLength":I
    invoke-direct {p0, p1, p2, v0}, Landroidx/car/widget/PagedScrollBarView;->calculateScrollThumbOffset(III)I

    move-result v1

    .line 227
    .local v1, "thumbOffset":I
    iget-object v2, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 229
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    .line 230
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->measureAndLayoutScrollThumb()V

    .line 234
    :cond_1
    iget-object v3, p0, Landroidx/car/widget/PagedScrollBarView;->mScrollThumb:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 235
    return-void

    .line 220
    .end local v0    # "thumbLength":I
    .end local v1    # "thumbOffset":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method setShowAlphaJump(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 154
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mAlphaJumpButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public setThumbColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUseCustomThumbBackground:Z

    .line 288
    iput p1, p0, Landroidx/car/widget/PagedScrollBarView;->mCustomThumbBackgroundResId:I

    .line 289
    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView;->reloadColors()V

    .line 290
    return-void
.end method

.method public setUpButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method public setUpEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 255
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView;->mUpButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 257
    return-void
.end method
