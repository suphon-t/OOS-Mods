.class public Landroidx/car/widget/TextListItem;
.super Landroidx/car/widget/ListItem;
.source "TextListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/TextListItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/car/widget/ListItem<",
        "Landroidx/car/widget/TextListItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction1OnClickListener:Landroid/view/View$OnClickListener;

.field private mAction1Text:Ljava/lang/String;

.field private mAction2OnClickListener:Landroid/view/View$OnClickListener;

.field private mAction2Text:Ljava/lang/String;

.field private final mBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "Landroidx/car/widget/TextListItem$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBody:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIsBodyPrimary:Z

.field private mIsEnabled:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPrimaryActionIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPrimaryActionIconSize:I

.field private mPrimaryActionType:I

.field private mShowAction1Divider:Z

.field private mShowAction2Divider:Z

.field private mShowSupplementalIconDivider:Z

.field private mShowSwitchDivider:Z

.field private mSupplementalActionType:I

.field private mSupplementalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

.field private mSwitchChecked:Z

.field private mSwitchOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static createViewHolder(Landroid/view/View;)Landroidx/car/widget/TextListItem$ViewHolder;
    .locals 1
    .param p0, "itemView"    # Landroid/view/View;

    .line 163
    new-instance v0, Landroidx/car/widget/TextListItem$ViewHolder;

    invoke-direct {v0, p0}, Landroidx/car/widget/TextListItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private getSupplementalActionLeadingView()I
    .locals 2

    .line 494
    iget v0, p0, Landroidx/car/widget/TextListItem;->mSupplementalActionType:I

    packed-switch v0, :pswitch_data_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown supplemental action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_0
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowSwitchDivider:Z

    if-eqz v0, :cond_0

    sget v0, Landroidx/car/R$id;->switch_divider:I

    goto :goto_0

    :cond_0
    sget v0, Landroidx/car/R$id;->switch_widget:I

    .line 510
    .local v0, "leadingViewId":I
    :goto_0
    goto :goto_4

    .line 506
    .end local v0    # "leadingViewId":I
    :pswitch_1
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowAction2Divider:Z

    if-eqz v0, :cond_1

    sget v0, Landroidx/car/R$id;->action2_divider:I

    goto :goto_1

    :cond_1
    sget v0, Landroidx/car/R$id;->action2:I

    .line 507
    .restart local v0    # "leadingViewId":I
    :goto_1
    goto :goto_4

    .line 503
    .end local v0    # "leadingViewId":I
    :pswitch_2
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowAction1Divider:Z

    if-eqz v0, :cond_2

    sget v0, Landroidx/car/R$id;->action1_divider:I

    goto :goto_2

    :cond_2
    sget v0, Landroidx/car/R$id;->action1:I

    .line 504
    .restart local v0    # "leadingViewId":I
    :goto_2
    goto :goto_4

    .line 499
    .end local v0    # "leadingViewId":I
    :pswitch_3
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowSupplementalIconDivider:Z

    if-eqz v0, :cond_3

    sget v0, Landroidx/car/R$id;->supplemental_icon_divider:I

    goto :goto_3

    :cond_3
    sget v0, Landroidx/car/R$id;->supplemental_icon:I

    .line 501
    .restart local v0    # "leadingViewId":I
    :goto_3
    goto :goto_4

    .line 496
    .end local v0    # "leadingViewId":I
    :pswitch_4
    const/4 v0, 0x0

    .line 497
    .restart local v0    # "leadingViewId":I
    nop

    .line 512
    :goto_4
    nop

    .line 514
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSubViews(Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 5
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 231
    invoke-static {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->access$000(Landroidx/car/widget/TextListItem$ViewHolder;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 232
    .local v3, "v":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .end local v3    # "v":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemLayoutHeight$10(ILandroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 255
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 256
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getContainerLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 258
    iget-object p0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 259
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 261
    return-void
.end method

.method static synthetic lambda$setItemLayoutHeight$9(ILandroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 245
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 246
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object p0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 248
    return-void
.end method

.method public static synthetic lambda$setOnClickListener$11(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 280
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 282
    return-void
.end method

.method public static synthetic lambda$setPrimaryIconContent$12(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 289
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public static synthetic lambda$setPrimaryIconLayout$13(Landroidx/car/widget/TextListItem;IILandroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 3
    .param p3, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 349
    nop

    .line 350
    invoke-virtual {p3}, Landroidx/car/widget/TextListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 351
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 352
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 356
    iget p2, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionIconSize:I

    const/16 v1, 0xf

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 365
    iget-object p2, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Landroidx/car/R$dimen;->car_double_line_list_item_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 367
    .local p2, "itemHeight":I
    sub-int p1, p2, p1

    div-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 369
    .end local p2    # "itemHeight":I
    :goto_0
    invoke-virtual {p3}, Landroidx/car/widget/TextListItem$ViewHolder;->getPrimaryIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 370
    return-void
.end method

.method public static synthetic lambda$setSupplementalActions$24(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 569
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowSupplementalIconDivider:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSupplementalIconDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mSupplementalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSupplementalIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 579
    return-void
.end method

.method public static synthetic lambda$setSupplementalActions$25(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 583
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction2()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowAction2Divider:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction2Divider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction2()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mAction2Text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction2()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mAction2OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void
.end method

.method public static synthetic lambda$setSupplementalActions$26(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 594
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction1()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowAction1Divider:Z

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction1Divider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction1()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mAction1Text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 600
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getAction1()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mAction1OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    return-void
.end method

.method public static synthetic lambda$setSupplementalActions$27(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 608
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 609
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/car/widget/TextListItem;->mSwitchChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 610
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mSwitchOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 611
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mShowSwitchDivider:Z

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getSwitchDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setTextContent$14(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 376
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    return-void
.end method

.method public static synthetic lambda$setTextContent$15(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 382
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    return-void
.end method

.method public static synthetic lambda$setTextContent$16(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 389
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/TextListItem;->getBodyTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 390
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/TextListItem;->getTitleTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 391
    return-void
.end method

.method public static synthetic lambda$setTextContent$17(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 394
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/TextListItem;->getTitleTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 395
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/TextListItem;->getBodyTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 396
    return-void
.end method

.method public static synthetic lambda$setTextEndLayout$22(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 6
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 524
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 525
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 527
    .local v1, "padding":I
    nop

    .line 528
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .local v2, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 530
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 531
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 533
    nop

    .line 534
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    .local v5, "bodyLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 536
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 537
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 538
    return-void
.end method

.method public static synthetic lambda$setTextEndLayout$23(Landroidx/car/widget/TextListItem;ILandroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 6
    .param p2, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 542
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 543
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 545
    .local v1, "padding":I
    nop

    .line 546
    invoke-virtual {p2}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 547
    .local v2, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 548
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 549
    const/16 v4, 0x10

    invoke-virtual {v2, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 550
    invoke-virtual {p2}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 552
    nop

    .line 553
    invoke-virtual {p2}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .local v5, "bodyLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 555
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 556
    invoke-virtual {v5, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 557
    invoke-virtual {p2}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 558
    return-void
.end method

.method static synthetic lambda$setTextStartMargin$18(ILandroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 422
    nop

    .line 423
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    .local v0, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 425
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 427
    nop

    .line 428
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 429
    .local v1, "bodyLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 430
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 431
    return-void
.end method

.method static synthetic lambda$setTextVerticalMargin$19(Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 2
    .param p0, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 443
    nop

    .line 444
    invoke-virtual {p0}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 446
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 447
    invoke-virtual {p0}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 448
    return-void
.end method

.method public static synthetic lambda$setTextVerticalMargin$20(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 3
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 452
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_padding_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 454
    .local v0, "margin":I
    nop

    .line 455
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 457
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 458
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 459
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 460
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 461
    return-void
.end method

.method public static synthetic lambda$setTextVerticalMargin$21(Landroidx/car/widget/TextListItem;Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 7
    .param p1, "vh"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 465
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 466
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/car/R$dimen;->car_padding_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 467
    .local v1, "padding1":I
    sget v2, Landroidx/car/R$dimen;->car_padding_3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 469
    .local v2, "padding3":I
    nop

    .line 470
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 471
    .local v3, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 472
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 473
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 475
    nop

    .line 476
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 477
    .local v5, "bodyLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 478
    sget v4, Landroidx/car/R$id;->title:I

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 479
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 480
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 481
    invoke-virtual {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->getBody()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 482
    return-void
.end method

.method private setItemLayoutHeight()V
    .locals 3

    .line 240
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_single_line_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 244
    .local v0, "height":I
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$TextListItem$jlDxX8iWVyw9PLzOPOSdexv_SeA;

    invoke-direct {v2, v0}, Landroidx/car/widget/-$$Lambda$TextListItem$jlDxX8iWVyw9PLzOPOSdexv_SeA;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v0    # "height":I
    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_double_line_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 254
    .local v0, "minHeight":I
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$TextListItem$4OJISyXQlZZoDXsL4UvKKaIQ8pg;

    invoke-direct {v2, v0}, Landroidx/car/widget/-$$Lambda$TextListItem$4OJISyXQlZZoDXsL4UvKKaIQ8pg;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v0    # "minHeight":I
    :goto_0
    return-void
.end method

.method private setOnClickListener()V
    .locals 2

    .line 279
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$1PuGCq5Cyi-OnogDSiOc6QykmXg;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$1PuGCq5Cyi-OnogDSiOc6QykmXg;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method private setPrimaryAction()V
    .locals 0

    .line 266
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setPrimaryIconContent()V

    .line 267
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setPrimaryIconLayout()V

    .line 268
    return-void
.end method

.method private setPrimaryIconContent()V
    .locals 2

    .line 286
    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionType:I

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$QkyLhTnr2AZU1cOvZl2jTm88nDs;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$QkyLhTnr2AZU1cOvZl2jTm88nDs;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    goto :goto_0

    .line 297
    :pswitch_1
    nop

    .line 301
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPrimaryIconLayout()V
    .locals 5

    .line 312
    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionType:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 319
    :cond_0
    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionIconSize:I

    packed-switch v0, :pswitch_data_0

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action icon size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_0
    sget v0, Landroidx/car/R$dimen;->car_single_line_list_item_height:I

    .line 328
    .local v0, "sizeResId":I
    goto :goto_0

    .line 324
    .end local v0    # "sizeResId":I
    :pswitch_1
    sget v0, Landroidx/car/R$dimen;->car_avatar_icon_size:I

    .line 325
    .restart local v0    # "sizeResId":I
    goto :goto_0

    .line 321
    .end local v0    # "sizeResId":I
    :pswitch_2
    sget v0, Landroidx/car/R$dimen;->car_primary_icon_size:I

    .line 322
    .restart local v0    # "sizeResId":I
    nop

    .line 330
    :goto_0
    nop

    .line 332
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 336
    .local v1, "iconSize":I
    iget v2, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionIconSize:I

    packed-switch v2, :pswitch_data_1

    .line 345
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown primary action icon size."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :pswitch_3
    const/4 v2, 0x0

    .line 343
    .local v2, "startMargin":I
    goto :goto_1

    .line 339
    .end local v2    # "startMargin":I
    :pswitch_4
    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$dimen;->car_keyline_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 340
    .restart local v2    # "startMargin":I
    nop

    .line 345
    :goto_1
    nop

    .line 348
    iget-object v3, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v4, Landroidx/car/widget/-$$Lambda$TextListItem$jitVVETB5LgxH-6cmLSh4bpI4Nc;

    invoke-direct {v4, p0, v1, v2}, Landroidx/car/widget/-$$Lambda$TextListItem$jitVVETB5LgxH-6cmLSh4bpI4Nc;-><init>(Landroidx/car/widget/TextListItem;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void

    .line 314
    .end local v0    # "sizeResId":I
    .end local v1    # "iconSize":I
    .end local v2    # "startMargin":I
    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setSupplementalActions()V
    .locals 2

    .line 566
    iget v0, p0, Landroidx/car/widget/TextListItem;->mSupplementalActionType:I

    packed-switch v0, :pswitch_data_0

    .line 617
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown supplemental action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_0
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$ru6B6lZ3eqcpsUcCwoaSRpiICUY;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$ru6B6lZ3eqcpsUcCwoaSRpiICUY;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$q0ErhwEYjZ-60NLI4XYUdCzM10w;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$q0ErhwEYjZ-60NLI4XYUdCzM10w;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :pswitch_2
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$8wdsszlPkmieAzX22fpMRjdFcak;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$8wdsszlPkmieAzX22fpMRjdFcak;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    goto :goto_0

    .line 568
    :pswitch_3
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$lfvKTpIOsbIQJ2BKIgqNGHY5qJ4;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$lfvKTpIOsbIQJ2BKIgqNGHY5qJ4;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    goto :goto_0

    .line 605
    :pswitch_4
    nop

    .line 619
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setText()V
    .locals 0

    .line 271
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextContent()V

    .line 272
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextVerticalMargin()V

    .line 274
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextStartMargin()V

    .line 275
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextEndLayout()V

    .line 276
    return-void
.end method

.method private setTextContent()V
    .locals 2

    .line 374
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$hMHjD9dvt1E3eDQaOD7fD3BslWs;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$hMHjD9dvt1E3eDQaOD7fD3BslWs;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_0
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$aSCi-SoSVZ3RsXs84htsNyba8-8;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$aSCi-SoSVZ3RsXs84htsNyba8-8;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    iget-boolean v0, p0, Landroidx/car/widget/TextListItem;->mIsBodyPrimary:Z

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$se0KlOTemhhwhqfZF5c066e0hC0;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$se0KlOTemhhwhqfZF5c066e0hC0;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$6TeQsN7-Mf2dV79YoPGa0_tJGbA;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$6TeQsN7-Mf2dV79YoPGa0_tJGbA;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return-void
.end method

.method private setTextEndLayout()V
    .locals 3

    .line 519
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->getSupplementalActionLeadingView()I

    move-result v0

    .line 521
    .local v0, "leadingViewId":I
    if-nez v0, :cond_0

    .line 523
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$TextListItem$l3eaS3HeBPLgMHu-jUP8LDdjegE;

    invoke-direct {v2, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$l3eaS3HeBPLgMHu-jUP8LDdjegE;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 541
    :cond_0
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;

    invoke-direct {v2, p0, v0}, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;-><init>(Landroidx/car/widget/TextListItem;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :goto_0
    return-void
.end method

.method private setTextStartMargin()V
    .locals 4

    .line 405
    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionType:I

    packed-switch v0, :pswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown primary action type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :pswitch_0
    iget v0, p0, Landroidx/car/widget/TextListItem;->mPrimaryActionIconSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Landroidx/car/R$dimen;->car_keyline_4:I

    goto :goto_0

    :cond_0
    sget v0, Landroidx/car/R$dimen;->car_keyline_3:I

    .line 416
    .local v0, "startMarginResId":I
    :goto_0
    goto :goto_1

    .line 410
    .end local v0    # "startMarginResId":I
    :pswitch_1
    sget v0, Landroidx/car/R$dimen;->car_keyline_3:I

    .line 411
    .restart local v0    # "startMarginResId":I
    goto :goto_1

    .line 407
    .end local v0    # "startMarginResId":I
    :pswitch_2
    sget v0, Landroidx/car/R$dimen;->car_keyline_1:I

    .line 408
    .restart local v0    # "startMarginResId":I
    nop

    .line 418
    :goto_1
    nop

    .line 420
    iget-object v1, p0, Landroidx/car/widget/TextListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 421
    .local v1, "startMargin":I
    iget-object v2, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v3, Landroidx/car/widget/-$$Lambda$TextListItem$bzBjZsqv0Wn7XdN2kyq8-IemRlg;

    invoke-direct {v3, v1}, Landroidx/car/widget/-$$Lambda$TextListItem$bzBjZsqv0Wn7XdN2kyq8-IemRlg;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTextVerticalMargin()V
    .locals 2

    .line 440
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    sget-object v1, Landroidx/car/widget/-$$Lambda$TextListItem$-X0rGQ5OC-u6gYjfdtudgJjL0uE;->INSTANCE:Landroidx/car/widget/-$$Lambda$TextListItem$-X0rGQ5OC-u6gYjfdtudgJjL0uE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$9FvqZ6rDPbkZArZzcbagObIw4W0;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$9FvqZ6rDPbkZArZzcbagObIw4W0;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    new-instance v1, Landroidx/car/widget/-$$Lambda$TextListItem$U2StzL-VEcPgCjHHiMjs1ITF3gk;

    invoke-direct {v1, p0}, Landroidx/car/widget/-$$Lambda$TextListItem$U2StzL-VEcPgCjHHiMjs1ITF3gk;-><init>(Landroidx/car/widget/TextListItem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :goto_0
    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBind(Landroidx/car/widget/ListItem$ViewHolder;)V
    .locals 0

    .line 83
    check-cast p1, Landroidx/car/widget/TextListItem$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/car/widget/TextListItem;->onBind(Landroidx/car/widget/TextListItem$ViewHolder;)V

    return-void
.end method

.method public onBind(Landroidx/car/widget/TextListItem$ViewHolder;)V
    .locals 5
    .param p1, "viewHolder"    # Landroidx/car/widget/TextListItem$ViewHolder;

    .line 199
    invoke-direct {p0, p1}, Landroidx/car/widget/TextListItem;->hideSubViews(Landroidx/car/widget/TextListItem$ViewHolder;)V

    .line 200
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    .line 201
    .local v1, "binder":Landroidx/car/widget/ListItem$ViewBinder;
    invoke-interface {v1, p1}, Landroidx/car/widget/ListItem$ViewBinder;->bind(Ljava/lang/Object;)V

    .line 202
    .end local v1    # "binder":Landroidx/car/widget/ListItem$ViewBinder;
    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Landroidx/car/widget/TextListItem$ViewHolder;->access$000(Landroidx/car/widget/TextListItem$ViewHolder;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 205
    .local v3, "v":Landroid/view/View;
    iget-boolean v4, p0, Landroidx/car/widget/TextListItem;->mIsEnabled:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    .end local v3    # "v":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p1, Landroidx/car/widget/TextListItem$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Landroidx/car/widget/TextListItem;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    return-void
.end method

.method protected resolveDirtyState()V
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/car/widget/TextListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setItemLayoutHeight()V

    .line 188
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setPrimaryAction()V

    .line 189
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setText()V

    .line 190
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setSupplementalActions()V

    .line 191
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setOnClickListener()V

    .line 192
    return-void
.end method

.method setBodyTextAppearance(I)V
    .locals 0
    .param p1, "bodyTextAppearance"    # I

    .line 221
    invoke-super {p0, p1}, Landroidx/car/widget/ListItem;->setBodyTextAppearance(I)V

    .line 222
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextContent()V

    .line 223
    return-void
.end method

.method setTitleTextAppearance(I)V
    .locals 0
    .param p1, "titleTextAppearance"    # I

    .line 214
    invoke-super {p0, p1}, Landroidx/car/widget/ListItem;->setTitleTextAppearance(I)V

    .line 215
    invoke-direct {p0}, Landroidx/car/widget/TextListItem;->setTextContent()V

    .line 216
    return-void
.end method
