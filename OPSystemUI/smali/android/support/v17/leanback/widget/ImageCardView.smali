.class public Landroid/support/v17/leanback/widget/ImageCardView;
.super Landroid/support/v17/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 291
    sget v0, Landroid/support/v17/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    sget v0, Landroid/support/v17/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v17/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    .line 162
    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyle"    # I

    move-object/from16 v0, p0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 170
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Landroid/support/v17/leanback/R$layout;->lb_image_card_view:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v17/leanback/R$styleable;->lbImageCardView:[I

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 173
    .local v3, "cardAttrs":Landroid/content/res/TypedArray;
    sget v4, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    .line 174
    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 176
    .local v4, "cardType":I
    if-nez v4, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 177
    .local v9, "hasImageOnly":Z
    :goto_0
    and-int/lit8 v10, v4, 0x1

    if-ne v10, v1, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v8

    .line 178
    .local v10, "hasTitle":Z
    :goto_1
    and-int/lit8 v11, v4, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v8

    .line 179
    .local v11, "hasContent":Z
    :goto_2
    and-int/lit8 v12, v4, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    move v12, v1

    goto :goto_3

    :cond_3
    move v12, v8

    .line 180
    .local v12, "hasIconRight":Z
    :goto_3
    const/16 v14, 0x8

    if-nez v12, :cond_4

    and-int/lit8 v15, v4, 0x8

    if-ne v15, v14, :cond_4

    move v15, v1

    goto :goto_4

    :cond_4
    move v15, v8

    .line 183
    .local v15, "hasIconLeft":Z
    :goto_4
    sget v14, Landroid/support/v17/leanback/R$id;->main_image:I

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 184
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_5

    .line 185
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :cond_5
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const-string v14, "alpha"

    new-array v1, v1, [F

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v1, v8

    invoke-static {v13, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 189
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x10e0000

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-long v13, v13

    .line 189
    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    sget v1, Landroid/support/v17/leanback/R$id;->info_field:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    .line 193
    if-eqz v9, :cond_6

    .line 194
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->removeView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void

    .line 199
    :cond_6
    if-eqz v10, :cond_7

    .line 200
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_title:I

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 202
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    :cond_7
    if-eqz v11, :cond_8

    .line 206
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_content:I

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 208
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    :cond_8
    if-nez v12, :cond_9

    if-eqz v15, :cond_b

    .line 212
    :cond_9
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    .line 213
    .local v1, "layoutId":I
    if-eqz v15, :cond_a

    .line 214
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    .line 216
    :cond_a
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    .line 217
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    .end local v1    # "layoutId":I
    :cond_b
    const/16 v1, 0x10

    const/16 v8, 0x11

    if-eqz v10, :cond_d

    if-nez v11, :cond_d

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v13, :cond_d

    .line 222
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 223
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .local v13, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v15, :cond_c

    .line 226
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    invoke-virtual {v13, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 228
    :cond_c
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    invoke-virtual {v13, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    :goto_5
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    if-eqz v11, :cond_10

    .line 235
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 236
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .restart local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v10, :cond_e

    .line 238
    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    :cond_e
    if-eqz v15, :cond_f

    .line 242
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 243
    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 244
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v13, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    :cond_f
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .end local v13    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_10
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    .line 250
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    .line 251
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 252
    .local v1, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v11, :cond_11

    .line 253
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v8

    const/16 v13, 0x8

    invoke-virtual {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 254
    :cond_11
    const/16 v13, 0x8

    if-eqz v10, :cond_12

    .line 255
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v8

    invoke-virtual {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    :cond_12
    :goto_6
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .end local v1    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 267
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_14

    .line 268
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_14
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_15

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_15

    .line 275
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    :cond_15
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    return-void
.end method

.method private fadeIn()V
    .locals 2

    .line 468
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 469
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 481
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onAttachedToWindow()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 483
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ImageCardView;->fadeIn()V

    .line 486
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 492
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 493
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    .line 494
    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :cond_0
    return-void
.end method
