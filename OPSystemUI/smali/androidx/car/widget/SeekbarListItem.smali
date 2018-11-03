.class public Landroidx/car/widget/SeekbarListItem;
.super Landroidx/car/widget/ListItem;
.source "SeekbarListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/SeekbarListItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/car/widget/ListItem<",
        "Landroidx/car/widget/SeekbarListItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "Landroidx/car/widget/SeekbarListItem$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mMax:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPrimaryActionIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPrimaryActionIconOnClickListener:Landroid/view/View$OnClickListener;

.field private mPrimaryActionType:I

.field private mProgress:I

.field private mSecondaryProgress:I

.field private mShowSupplementalIconDivider:Z

.field private mSupplementalActionType:I

.field private mSupplementalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Landroidx/car/widget/ListItem;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/widget/SeekbarListItem;->mIsEnabled:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionType:I

    .line 112
    iput v0, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalActionType:I

    .line 125
    iput-object p1, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 127
    return-void
.end method

.method public static createViewHolder(Landroid/view/View;)Landroidx/car/widget/SeekbarListItem$ViewHolder;
    .locals 1
    .param p0, "itemView"    # Landroid/view/View;

    .line 121
    new-instance v0, Landroidx/car/widget/SeekbarListItem$ViewHolder;

    invoke-direct {v0, p0}, Landroidx/car/widget/SeekbarListItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private hideSubViews(Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 6
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 213
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getWidgetViews()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 214
    .local v4, "v":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v4    # "v":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 218
    return-void
.end method

.method static synthetic lambda$setItemLayoutHeight$41(ILandroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 224
    iget-object v0, p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 225
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getContainerLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 227
    iget-object p0, p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 228
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget-object v0, p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 230
    return-void
.end method

.method public static synthetic lambda$setPrimaryActionContent$43(Landroidx/car/widget/SeekbarListItem;Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 297
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionIconOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 303
    return-void
.end method

.method public static synthetic lambda$setPrimaryActionLayout$42(Landroidx/car/widget/SeekbarListItem;IILandroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 3
    .param p3, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 260
    nop

    .line 261
    invoke-virtual {p3}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 265
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 268
    iget-object p2, p0, Landroidx/car/widget/SeekbarListItem;->mText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0xf

    if-nez p2, :cond_0

    .line 272
    iget-object p2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroidx/car/R$dimen;->car_double_line_list_item_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 274
    .local p2, "itemHeight":I
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 275
    sub-int p1, p2, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    .end local p2    # "itemHeight":I
    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 281
    :goto_0
    invoke-virtual {p3}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 282
    return-void
.end method

.method public static synthetic lambda$setSeekBarAndTextContent$44(Landroidx/car/widget/SeekbarListItem;Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 312
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Landroidx/car/widget/SeekbarListItem;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 313
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Landroidx/car/widget/SeekbarListItem;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 314
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Landroidx/car/widget/SeekbarListItem;->mSecondaryProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 315
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 317
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->getTitleTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setSeekBarAndTextLayout$45(Landroidx/car/widget/SeekbarListItem;Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 328
    nop

    .line 329
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 330
    .local v0, "seekBarLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/R$dimen;->car_padding_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 333
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestLayout()V

    .line 336
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBarContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/car/widget/SeekbarListItem;->setViewStartMargin(Landroid/view/View;)V

    .line 337
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBarContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/car/widget/SeekbarListItem;->setViewEndMargin(Landroid/view/View;)V

    .line 339
    nop

    .line 340
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSeekBarContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v1, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    return-void
.end method

.method public static synthetic lambda$setSupplementalActionContent$47(Landroidx/car/widget/SeekbarListItem;Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 448
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-boolean v0, p0, Landroidx/car/widget/SeekbarListItem;->mShowSupplementalIconDivider:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIconDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 459
    return-void
.end method

.method static synthetic lambda$setSupplementalActionLayout$46(IILandroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 4
    .param p2, "vh"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 419
    nop

    .line 420
    invoke-virtual {p2}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 422
    .local v0, "iconLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 423
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 424
    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    invoke-virtual {p2}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 429
    nop

    .line 430
    invoke-virtual {p2}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIconDivider()Landroid/view/View;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    .local v1, "dividerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Landroidx/car/R$id;->supplemental_icon:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 433
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 434
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 436
    invoke-virtual {p2}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getSupplementalIconDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 437
    return-void
.end method

.method private setItemLayoutHeight()V
    .locals 3

    .line 221
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_single_line_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 223
    .local v0, "minHeight":I
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$SeekbarListItem$7Tjjee35UV5Tm2kweKxgeql9p4I;

    invoke-direct {v2, v0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$7Tjjee35UV5Tm2kweKxgeql9p4I;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method private setPrimaryAction()V
    .locals 0

    .line 234
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setPrimaryActionLayout()V

    .line 235
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setPrimaryActionContent()V

    .line 236
    return-void
.end method

.method private setPrimaryActionContent()V
    .locals 2

    .line 290
    iget v0, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionType:I

    packed-switch v0, :pswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$SeekbarListItem$K1nOHRrGW93HPmduhJRS0oG8aXg;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$K1nOHRrGW93HPmduhJRS0oG8aXg;-><init>(Landroidx/car/widget/SeekbarListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    goto :goto_0

    .line 294
    :pswitch_1
    nop

    .line 308
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPrimaryActionLayout()V
    .locals 4

    .line 249
    iget v0, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionType:I

    packed-switch v0, :pswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 257
    .local v0, "startMargin":I
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/R$dimen;->car_primary_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 259
    .local v1, "iconSize":I
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v3, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;

    invoke-direct {v3, p0, v1, v0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;-><init>(Landroidx/car/widget/SeekbarListItem;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    goto :goto_0

    .line 253
    .end local v0    # "startMargin":I
    .end local v1    # "iconSize":I
    :pswitch_1
    nop

    .line 287
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSeekBarAndText()V
    .locals 0

    .line 239
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSeekBarAndTextContent()V

    .line 240
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSeekBarAndTextLayout()V

    .line 241
    return-void
.end method

.method private setSeekBarAndTextContent()V
    .locals 2

    .line 311
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$SeekbarListItem$lSn9m8ivb9fSapIqjcRgGsmpj3U;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$lSn9m8ivb9fSapIqjcRgGsmpj3U;-><init>(Landroidx/car/widget/SeekbarListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method private setSeekBarAndTextLayout()V
    .locals 2

    .line 326
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$SeekbarListItem$TBLDTt7Paps7Sd3hQA-yyAdyr84;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$TBLDTt7Paps7Sd3hQA-yyAdyr84;-><init>(Landroidx/car/widget/SeekbarListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method private setSupplementalAction()V
    .locals 0

    .line 244
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSupplementalActionLayout()V

    .line 245
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSupplementalActionContent()V

    .line 246
    return-void
.end method

.method private setSupplementalActionContent()V
    .locals 2

    .line 441
    iget v0, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalActionType:I

    packed-switch v0, :pswitch_data_0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown supplemental action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$SeekbarListItem$Su6AbqkAIyFHS_MGB7hp8rpzrMI;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$Su6AbqkAIyFHS_MGB7hp8rpzrMI;-><init>(Landroidx/car/widget/SeekbarListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    goto :goto_0

    .line 445
    :pswitch_1
    nop

    .line 464
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setSupplementalActionLayout()V
    .locals 4

    .line 416
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 417
    .local v0, "keyline1":I
    iget-object v1, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/R$dimen;->car_padding_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 418
    .local v1, "padding4":I
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    new-instance v3, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;

    invoke-direct {v3, v0, v1}, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method private setViewEndMargin(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 368
    nop

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 371
    .local v1, "endMargin":I
    iget v2, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalActionType:I

    const/16 v3, 0x10

    const/16 v4, 0x15

    packed-switch v2, :pswitch_data_0

    .line 410
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown supplemental action type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :pswitch_0
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/car/R$dimen;->car_padding_4:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 393
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/car/R$dimen;->car_vertical_line_divider_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 398
    :pswitch_1
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/car/R$dimen;->car_padding_4:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 400
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/car/R$dimen;->car_primary_icon_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 402
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 405
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 408
    goto :goto_0

    .line 381
    :pswitch_2
    sget v2, Landroidx/car/R$id;->supplemental_icon_divider:I

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 382
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 383
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$dimen;->car_padding_4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 385
    goto :goto_0

    .line 374
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 376
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 378
    nop

    .line 412
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 413
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setViewStartMargin(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 348
    iget v0, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionType:I

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_0
    sget v0, Landroidx/car/R$dimen;->car_keyline_3:I

    .line 355
    .local v0, "startMarginResId":I
    goto :goto_0

    .line 350
    .end local v0    # "startMarginResId":I
    :pswitch_1
    sget v0, Landroidx/car/R$dimen;->car_keyline_1:I

    .line 351
    .restart local v0    # "startMarginResId":I
    nop

    .line 357
    :goto_0
    nop

    .line 359
    nop

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 361
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Landroidx/car/widget/SeekbarListItem;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 361
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 364
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .line 134
    const/4 v0, 0x2

    return v0
.end method

.method protected bridge synthetic onBind(Landroidx/car/widget/ListItem$ViewHolder;)V
    .locals 0

    .line 73
    check-cast p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/car/widget/SeekbarListItem;->onBind(Landroidx/car/widget/SeekbarListItem$ViewHolder;)V

    return-void
.end method

.method protected onBind(Landroidx/car/widget/SeekbarListItem$ViewHolder;)V
    .locals 5
    .param p1, "viewHolder"    # Landroidx/car/widget/SeekbarListItem$ViewHolder;

    .line 202
    invoke-direct {p0, p1}, Landroidx/car/widget/SeekbarListItem;->hideSubViews(Landroidx/car/widget/SeekbarListItem$ViewHolder;)V

    .line 203
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    .line 204
    .local v1, "binder":Landroidx/car/widget/ListItem$ViewBinder;
    invoke-interface {v1, p1}, Landroidx/car/widget/ListItem$ViewBinder;->bind(Ljava/lang/Object;)V

    .line 205
    .end local v1    # "binder":Landroidx/car/widget/ListItem$ViewBinder;
    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/SeekbarListItem$ViewHolder;->getWidgetViews()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 208
    .local v3, "v":Landroid/view/View;
    iget-boolean v4, p0, Landroidx/car/widget/SeekbarListItem;->mIsEnabled:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    .end local v3    # "v":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    :cond_1
    return-void
.end method

.method protected resolveDirtyState()V
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/car/widget/SeekbarListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setItemLayoutHeight()V

    .line 191
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setPrimaryAction()V

    .line 192
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSeekBarAndText()V

    .line 193
    invoke-direct {p0}, Landroidx/car/widget/SeekbarListItem;->setSupplementalAction()V

    .line 194
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 146
    iput p1, p0, Landroidx/car/widget/SeekbarListItem;->mMax:I

    .line 147
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 148
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 170
    iput-object p1, p0, Landroidx/car/widget/SeekbarListItem;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 171
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 172
    return-void
.end method

.method public setPrimaryActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 481
    const/4 v0, 0x2

    iput v0, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionType:I

    .line 482
    iput-object p1, p0, Landroidx/car/widget/SeekbarListItem;->mPrimaryActionIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 484
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 154
    iput p1, p0, Landroidx/car/widget/SeekbarListItem;->mProgress:I

    .line 155
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 156
    return-void
.end method

.method public setSupplementalEmptyIcon(Z)V
    .locals 1
    .param p1, "seekbarOffsetDividerWidth"    # Z

    .line 565
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalActionType:I

    .line 568
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 569
    return-void
.end method

.method public setSupplementalIcon(Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "showSupplementalIconDivider"    # Z
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    const/4 v0, 0x1

    iput v0, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalActionType:I

    .line 552
    iput-object p1, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 553
    iput-boolean p2, p0, Landroidx/car/widget/SeekbarListItem;->mShowSupplementalIconDivider:Z

    .line 554
    iput-object p3, p0, Landroidx/car/widget/SeekbarListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    .line 556
    invoke-virtual {p0}, Landroidx/car/widget/SeekbarListItem;->markDirty()V

    .line 557
    return-void
.end method
