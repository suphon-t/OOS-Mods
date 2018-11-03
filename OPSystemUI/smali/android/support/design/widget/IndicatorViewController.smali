.class final Landroid/support/design/widget/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# instance fields
.field private captionAnimator:Landroid/animation/Animator;

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private captionToShow:I

.field private final captionTranslationYPx:F

.field private captionViewsAdded:I

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Landroid/support/design/widget/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 2
    .param p1, "textInputView"    # Landroid/support/design/widget/TextInputLayout;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    .line 118
    iput-object p1, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    .line 119
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/widget/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionTranslationYPx:F

    .line 121
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/widget/IndicatorViewController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/IndicatorViewController;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    return p1
.end method

.method static synthetic access$102(Landroid/support/design/widget/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/IndicatorViewController;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 55
    iput-object p1, p0, Landroid/support/design/widget/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/design/widget/IndicatorViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/IndicatorViewController;

    .line 55
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object v0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 1
    .param p2, "captionEnabled"    # Z
    .param p3, "captionView"    # Landroid/widget/TextView;
    .param p4, "captionState"    # I
    .param p5, "captionToHide"    # I
    .param p6, "captionToShow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    .line 289
    .local p1, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    .line 294
    :cond_1
    if-ne p6, p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-direct {p0, p3, v0}, Landroid/support/design/widget/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 294
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    if-ne p6, p4, :cond_3

    .line 297
    invoke-direct {p0, p3}, Landroid/support/design/widget/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    return-void

    .line 290
    :cond_4
    :goto_1
    return-void
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Landroid/widget/TextView;
    .param p2, "display"    # Z

    .line 303
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 304
    .local v0, "endValue":F
    :goto_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 305
    .local v1, "opacityAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    return-object v1
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Landroid/widget/TextView;

    .line 311
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroid/support/design/widget/IndicatorViewController;->captionTranslationYPx:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 312
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 313
    .local v0, "translationYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    return-object v0
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "captionDisplayState"    # I

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 337
    const/4 v0, 0x0

    return-object v0

    .line 334
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object v0

    .line 332
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCaptionStateError(I)Z
    .locals 2
    .param p1, "captionState"    # I

    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 488
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 1
    .param p1, "captionState"    # I

    .line 500
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 2
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I

    .line 256
    if-ne p1, p2, :cond_0

    .line 257
    return-void

    .line 260
    :cond_0
    if-eqz p2, :cond_1

    .line 261
    invoke-direct {p0, p2}, Landroid/support/design/widget/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    .line 262
    .local v0, "captionViewToShow":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 268
    .end local v0    # "captionViewToShow":Landroid/widget/TextView;
    :cond_1
    if-eqz p1, :cond_2

    .line 269
    invoke-direct {p0, p1}, Landroid/support/design/widget/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    .line 270
    .local v0, "captionViewDisplayed":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 271
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .end local v0    # "captionViewDisplayed":Landroid/widget/TextView;
    :cond_2
    iput p2, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    .line 279
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "indicatorsAdded"    # I

    .line 405
    if-nez p2, :cond_0

    .line 406
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "captionView"    # Landroid/widget/TextView;
    .param p2, "captionText"    # Ljava/lang/CharSequence;

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    .line 188
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 14
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I
    .param p3, "animate"    # Z

    move-object v7, p0

    .line 199
    move/from16 v8, p3

    if-eqz v8, :cond_0

    .line 200
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v9, v0

    .line 201
    .local v9, "captionAnimator":Landroid/animation/AnimatorSet;
    iput-object v9, v7, Landroid/support/design/widget/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 204
    .local v10, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v2, v7, Landroid/support/design/widget/IndicatorViewController;->helperTextEnabled:Z

    iget-object v3, v7, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, v7

    move-object v1, v10

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/design/widget/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 212
    iget-boolean v2, v7, Landroid/support/design/widget/IndicatorViewController;->errorEnabled:Z

    iget-object v3, v7, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/support/design/widget/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 220
    invoke-static {v9, v10}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 221
    invoke-direct {v7, p1}, Landroid/support/design/widget/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v6

    .line 222
    .local v6, "captionViewToHide":Landroid/widget/TextView;
    move/from16 v11, p2

    invoke-direct {v7, v11}, Landroid/support/design/widget/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v12

    .line 224
    .local v12, "captionViewToShow":Landroid/widget/TextView;
    new-instance v13, Landroid/support/design/widget/IndicatorViewController$1;

    move-object v0, v13

    move-object v1, v7

    move v2, v11

    move-object v3, v6

    move v4, p1

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/IndicatorViewController$1;-><init>(Landroid/support/design/widget/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    .end local v6    # "captionViewToHide":Landroid/widget/TextView;
    .end local v9    # "captionAnimator":Landroid/animation/AnimatorSet;
    .end local v10    # "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v12    # "captionViewToShow":Landroid/widget/TextView;
    goto :goto_0

    .line 247
    :cond_0
    move/from16 v11, p2

    invoke-direct/range {p0 .. p2}, Landroid/support/design/widget/IndicatorViewController;->setCaptionViewVisibilities(II)V

    .line 249
    :goto_0
    iget-object v0, v7, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 250
    iget-object v0, v7, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v8}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 251
    iget-object v0, v7, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 252
    return-void
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/widget/TextView;
    .param p2, "index"    # I

    .line 357
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 359
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 362
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 363
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 368
    new-instance v0, Landroid/support/v4/widget/Space;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, "spacer":Landroid/support/v4/widget/Space;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 370
    .local v2, "spacerLp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v3, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->adjustIndicatorPadding()V

    .line 377
    .end local v0    # "spacer":Landroid/support/v4/widget/Space;
    .end local v2    # "spacerLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/design/widget/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 380
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionViewsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionViewsAdded:I

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 384
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorsAdded:I

    .line 386
    return-void
.end method

.method adjustIndicatorPadding()V
    .locals 5

    .line 341
    invoke-direct {p0}, Landroid/support/design/widget/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    .line 345
    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    .line 347
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    .line 348
    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 343
    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 350
    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 322
    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 1

    .line 478
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method errorShouldBeShown()Z
    .locals 1

    .line 482
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .line 506
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 1

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 535
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 510
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method helperTextIsDisplayed()Z
    .locals 1

    .line 492
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v0

    return v0
.end method

.method hideError()V
    .locals 4

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 164
    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 166
    iget-boolean v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    goto :goto_0

    .line 170
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    .line 173
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    iget v2, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    iget-object v3, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 174
    invoke-direct {p0, v3, v0}, Landroid/support/design/widget/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 173
    invoke-direct {p0, v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 175
    return-void
.end method

.method hideHelperText()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 140
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    .line 143
    :cond_0
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0, v2, v3}, Landroid/support/design/widget/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 143
    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/widget/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 145
    return-void
.end method

.method isCaptionView(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 325
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method isErrorEnabled()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorEnabled:Z

    return v0
.end method

.method isHelperTextEnabled()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextEnabled:Z

    return v0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "indicator"    # Landroid/widget/TextView;
    .param p2, "index"    # I

    .line 389
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/design/widget/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 394
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionViewsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionViewsAdded:I

    .line 395
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionViewsAdded:I

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 396
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 400
    :goto_0
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorsAdded:I

    .line 401
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->indicatorsAdded:I

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 402
    return-void
.end method

.method setErrorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 412
    iget-boolean v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorEnabled:Z

    if-ne v0, p1, :cond_0

    .line 413
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 419
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 420
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 421
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/widget/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 422
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    :cond_1
    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorTextAppearance:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 426
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 428
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->hideError()V

    .line 431
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 433
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 434
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 436
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/IndicatorViewController;->errorEnabled:Z

    .line 437
    return-void
.end method

.method setErrorTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 539
    iput p1, p0, Landroid/support/design/widget/IndicatorViewController;->errorTextAppearance:I

    .line 540
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 543
    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 546
    iput p1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextTextAppearance:I

    .line 547
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 550
    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 449
    iget-boolean v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextEnabled:Z

    if-ne v0, p1, :cond_0

    .line 450
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 456
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 457
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 458
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/widget/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 459
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 462
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 465
    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextTextAppearance:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 466
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->hideHelperText()V

    .line 469
    iget-object v1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 472
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->textInputView:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 474
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextEnabled:Z

    .line 475
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 149
    iput-object p1, p0, Landroid/support/design/widget/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 150
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 154
    iput v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    .line 156
    :cond_0
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 157
    invoke-direct {p0, v2, p1}, Landroid/support/design/widget/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 156
    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/widget/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 158
    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0}, Landroid/support/design/widget/IndicatorViewController;->cancelCaptionAnimator()V

    .line 125
    iput-object p1, p0, Landroid/support/design/widget/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 126
    iget-object v0, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 130
    iput v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    .line 132
    :cond_0
    iget v0, p0, Landroid/support/design/widget/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Landroid/support/design/widget/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Landroid/support/design/widget/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 133
    invoke-direct {p0, v2, p1}, Landroid/support/design/widget/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 132
    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/widget/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 134
    return-void
.end method
