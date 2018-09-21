.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private boxCollapsedPaddingBottomPx:I

.field private boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomLeft:F

.field private boxCornerRadiusBottomRight:F

.field private boxCornerRadiusTopLeft:F

.field private boxCornerRadiusTopRight:F

.field private boxExpandedPaddingBottomPx:I

.field private boxExpandedPaddingTopPx:I

.field private final boxLabelCutoutPaddingPx:I

.field private boxPaddingLeftPx:I

.field private boxPaddingRightPx:I

.field private boxStrokeColor:I

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultBoxBackgroundColor:I

.field private final defaultStrokeColor:I

.field private defaultTextColor:Landroid/content/res/ColorStateList;

.field private final disabledColor:I

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 233
    sget v0, Landroid/support/design/widget/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 237
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    new-instance v2, Landroid/support/design/widget/IndicatorViewController;

    invoke-direct {v2, v0}, Landroid/support/design/widget/IndicatorViewController;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 187
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 188
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 218
    new-instance v2, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v2, v0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 243
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 244
    iget-object v4, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 245
    iget-object v4, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v4, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v5, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object v4, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v5, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v4, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v5, 0x800033

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 251
    sget-object v4, Landroid/support/design/widget/R$styleable;->TextInputLayout:[I

    sget v5, Landroid/support/design/widget/R$style;->Widget_Design_TextInputLayout:I

    .line 252
    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static {v1, v6, v4, v7, v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v4

    .line 259
    .local v4, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {v4, v5, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 260
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 261
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v4, v5, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 263
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxPaddingLeft:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxPaddingLeftPx:I

    .line 264
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 265
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 266
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCollapsedPaddingBottom:I

    .line 267
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingBottomPx:I

    .line 268
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxExpandedPaddingTop:I

    .line 269
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxExpandedPaddingTopPx:I

    .line 270
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxPaddingRight:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxPaddingRightPx:I

    .line 271
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxExpandedPaddingBottom:I

    .line 272
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxExpandedPaddingBottomPx:I

    .line 273
    nop

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Landroid/support/design/widget/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    .line 275
    nop

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Landroid/support/design/widget/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 278
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 280
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCornerRadiusTopLeft:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopLeft:F

    .line 281
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCornerRadiusTopRight:I

    .line 282
    invoke-virtual {v4, v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopRight:F

    .line 283
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCornerRadiusBottomRight:I

    .line 284
    invoke-virtual {v4, v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomRight:F

    .line 285
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxCornerRadiusBottomLeft:I

    .line 286
    invoke-virtual {v4, v5, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomLeft:F

    .line 288
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 289
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->defaultBoxBackgroundColor:I

    .line 290
    iget v5, v0, Landroid/support/design/widget/TextInputLayout;->defaultBoxBackgroundColor:I

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 292
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxStrokeColor:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 293
    nop

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Landroid/support/design/widget/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 296
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 297
    nop

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Landroid/support/design/widget/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 300
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 301
    iget v5, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v5, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 304
    sget v5, Landroid/support/design/widget/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 305
    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v5

    .line 306
    .local v5, "boxBackgroundMode":I
    invoke-virtual {v0, v5}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 307
    sget v8, Landroid/support/design/widget/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 308
    sget v8, Landroid/support/design/widget/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 309
    invoke-virtual {v4, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v8, v0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    .line 311
    :cond_0
    sget v8, Landroid/support/design/widget/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 312
    invoke-static {v1, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    .line 313
    sget v8, Landroid/support/design/widget/R$color;->mtrl_textinput_disabled_color:I

    invoke-static {v1, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    .line 314
    sget v8, Landroid/support/design/widget/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 315
    invoke-static {v1, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    .line 317
    sget v8, Landroid/support/design/widget/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 318
    .local v8, "hintAppearance":I
    if-eq v8, v9, :cond_1

    .line 319
    sget v10, Landroid/support/design/widget/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v4, v10, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 322
    :cond_1
    sget v10, Landroid/support/design/widget/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 323
    invoke-virtual {v4, v10, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    .line 324
    .local v10, "mErrorTextAppearance":I
    sget v11, Landroid/support/design/widget/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v4, v11, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 326
    .local v11, "errorEnabled":Z
    sget v12, Landroid/support/design/widget/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 327
    invoke-virtual {v4, v12, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 328
    .local v12, "mHelperTextTextAppearance":I
    sget v13, Landroid/support/design/widget/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 329
    invoke-virtual {v4, v13, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 330
    .local v13, "helperTextEnabled":Z
    sget v14, Landroid/support/design/widget/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v4, v14}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 332
    .local v14, "helperText":Ljava/lang/CharSequence;
    sget v15, Landroid/support/design/widget/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v4, v15, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 333
    .local v15, "counterEnabled":Z
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v4, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 334
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    .line 335
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 336
    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    .line 338
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 339
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 341
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 342
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 344
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 346
    :cond_2
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 348
    sget v2, Landroid/support/design/widget/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 350
    invoke-virtual {v4, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 349
    invoke-static {v2, v3}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 353
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 355
    invoke-virtual {v0, v13}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 356
    invoke-virtual {v0, v14}, Landroid/support/design/widget/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v0, v12}, Landroid/support/design/widget/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 358
    invoke-virtual {v0, v11}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 359
    invoke-virtual {v0, v10}, Landroid/support/design/widget/TextInputLayout;->setErrorTextAppearance(I)V

    .line 360
    invoke-virtual {v0, v15}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 362
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 364
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_4

    .line 367
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 370
    :cond_4
    new-instance v2, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {v2, v0}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 371
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TextInputLayout;

    .line 129
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TextInputLayout;
    .param p1, "x1"    # Z

    .line 129
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/IndicatorViewController;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TextInputLayout;

    .line 129
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    return-object v0
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 1335
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 1336
    return-void

    .line 1339
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->setBoxAttributes()V

    .line 1341
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1343
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1346
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1349
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1353
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1356
    :cond_3
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    if-eqz v0, :cond_4

    .line 1357
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1360
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1361
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1362
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1363
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 1927
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1928
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1929
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1930
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1931
    return-void
.end method

.method private applyEditTextBoxPadding()V
    .locals 5

    .line 440
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    .line 441
    return-void

    .line 444
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxPaddingLeftPx:I

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxExpandedPaddingTopPx:I

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->boxPaddingRightPx:I

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxExpandedPaddingBottomPx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 448
    :cond_1
    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1838
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1840
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1842
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1843
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1845
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1846
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1849
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1850
    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1851
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1854
    :cond_3
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    .line 425
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 427
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CutoutDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 437
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateBoxBackgroundTop()I
    .locals 2

    .line 1247
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1248
    return v1

    .line 1251
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1257
    return v1

    .line 1255
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1253
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 2

    .line 1278
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1284
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v0

    return v0

    .line 1280
    :pswitch_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 1282
    :pswitch_1
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLabelMarginTop()I
    .locals 2

    .line 1262
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1263
    return v1

    .line 1266
    :cond_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 1273
    return v1

    .line 1268
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 1271
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    float-to-int v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeCutout()V
    .locals 1

    .line 1921
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->removeCutout()V

    .line 1924
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 1892
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1895
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 1896
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1898
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1900
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 1901
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1902
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1904
    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 1907
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 5

    .line 1400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1401
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    .line 1403
    return-void

    .line 1405
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1406
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 1407
    return-void

    .line 1410
    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v2, :cond_3

    .line 1415
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1417
    .local v2, "newBg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_2

    .line 1420
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/DrawableContainer;

    .line 1422
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 1421
    invoke-static {v3, v4}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1425
    :cond_2
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v3, :cond_3

    .line 1430
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1431
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1433
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 1436
    .end local v2    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 2004
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2007
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 2008
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 2010
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 2012
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2013
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->closeCutout()V

    .line 2015
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 2016
    return-void
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 396
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 397
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    .line 680
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopLeft:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopLeft:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopRight:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopRight:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomRight:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomRight:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomLeft:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomLeft:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 690
    .local v0, "cornerRadii":[F
    return-object v0
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 1829
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1830
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1829
    :goto_0
    return v0
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 1

    .line 416
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 417
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 421
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyEditTextBoxPadding()V

    .line 422
    return-void
.end method

.method private openCutout()V
    .locals 2

    .line 1911
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 1915
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1916
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1917
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 1918
    return-void
.end method

.method private passwordVisibilityToggleRequested(Z)V
    .locals 3
    .param p1, "shouldSkipAnimations"    # Z

    .line 1806
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_2

    .line 1808
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1810
    .local v0, "selection":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1811
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1812
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_0

    .line 1814
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1815
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1818
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1819
    if-eqz p1, :cond_1

    .line 1820
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1824
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1826
    .end local v0    # "selection":I
    :cond_2
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .line 1156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1157
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1158
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1159
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1160
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1156
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    .line 1317
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1323
    :pswitch_0
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-nez v0, :cond_0

    .line 1324
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1326
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1325
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    goto :goto_0

    .line 1319
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 1320
    nop

    .line 1332
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 740
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 744
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_0

    .line 745
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 752
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 754
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    .line 757
    .local v0, "hasPasswordTransformation":Z
    if-nez v0, :cond_1

    .line 759
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 761
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 763
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    .line 764
    .local v1, "editTextGravity":I
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/16 v3, 0x30

    and-int/lit8 v4, v1, -0x71

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 766
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 769
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 787
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    .line 788
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    .line 792
    :cond_2
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 795
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 801
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 802
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 805
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->adjustIndicatorPadding()V

    .line 807
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 810
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 811
    return-void

    .line 741
    .end local v0    # "hasPasswordTransformation":Z
    .end local v1    # "editTextGravity":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 886
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 888
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_0

    .line 891
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 894
    :cond_0
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1834
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateEditTextBackgroundBounds()V
    .locals 8

    .line 1289
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1290
    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1293
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 1294
    return-void

    .line 1297
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1298
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1301
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1302
    .local v1, "editTextBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v2, v1}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1304
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1305
    .local v2, "editTextBackgroundBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_3

    .line 1307
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1308
    .local v3, "editTextBackgroundPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1310
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 1311
    .local v4, "left":I
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1312
    .local v5, "right":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1314
    .end local v3    # "editTextBackgroundPadding":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_3
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 816
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 817
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 819
    .local v1, "newTopMargin":I
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 820
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 821
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 823
    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 830
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 831
    .local v0, "isEnabled":Z
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 832
    .local v1, "hasText":Z
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    nop

    .line 833
    .local v2, "hasFocus":Z
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v3}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    .line 836
    .local v3, "errorShouldBeShown":Z
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    .line 837
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 838
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 842
    :cond_2
    if-nez v0, :cond_3

    .line 843
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 844
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 845
    :cond_3
    if-eqz v3, :cond_4

    .line 846
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v5}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 847
    :cond_4
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 848
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 849
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 850
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 853
    :cond_6
    :goto_1
    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_9

    if-eqz v3, :cond_7

    goto :goto_2

    .line 860
    :cond_7
    if-nez p2, :cond_8

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_b

    .line 861
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_3

    .line 855
    :cond_9
    :goto_2
    if-nez p2, :cond_a

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-eqz v4, :cond_b

    .line 856
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 864
    :cond_b
    :goto_3
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1584
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1586
    return-void

    .line 1589
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1590
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v0, :cond_1

    .line 1591
    nop

    .line 1593
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/design/widget/R$layout;->design_text_input_password_icon:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 1594
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CheckableImageButton;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1595
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1596
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1597
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1599
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v5, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v5, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1612
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1615
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1616
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1620
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1621
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1623
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1625
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1627
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v0, v2

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    .line 1628
    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1630
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1634
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1635
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1636
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1637
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1638
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 1634
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    .line 1639
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1640
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1641
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1644
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 1647
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1648
    .restart local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_7

    .line 1649
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1651
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1655
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_0
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 6

    .line 1220
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    .line 1228
    .local v0, "left":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v1

    .line 1229
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    .line 1230
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    add-int/2addr v3, v4

    .line 1234
    .local v3, "bottom":I
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1235
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1236
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 1237
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 1238
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1241
    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1242
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 1243
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackgroundBounds()V

    .line 1244
    return-void

    .line 1224
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 375
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x10

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, -0x71

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 387
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 388
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 390
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F

    .line 2020
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 2021
    return-void

    .line 2023
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 2024
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2025
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2026
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2027
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2035
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2036
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2037
    return-void
.end method

.method cutoutIsOpen()Z
    .locals 1

    .line 1935
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 722
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 730
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 732
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 735
    nop

    .line 736
    return-void

    .line 734
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw v1

    .line 723
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 724
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1515
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1516
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1518
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1567
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1569
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1572
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1575
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 1940
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v0, :cond_0

    .line 1944
    return-void

    .line 1947
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1949
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1951
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1952
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 1955
    .local v2, "changed":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1957
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1958
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1959
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1961
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1965
    :cond_2
    if-eqz v2, :cond_3

    .line 1966
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1969
    :cond_3
    iput-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1970
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 869
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1528
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 1

    .line 2061
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 904
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 1

    .line 2056
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 1

    .line 2051
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    return v0
.end method

.method final isHelperTextDisplayed()Z
    .locals 1

    .line 2046
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v0

    return v0
.end method

.method public isHelperTextEnabled()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1

    .line 2041
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1858
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1860
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 1861
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1864
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1865
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1866
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v1, v0}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1868
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 1869
    .local v1, "l":I
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1870
    .local v2, "r":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v3

    .line 1872
    .local v3, "t":I
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1874
    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1876
    invoke-virtual {v7}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1872
    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1880
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sub-int v5, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1881
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1885
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_1

    .line 1886
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1889
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1579
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1580
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1581
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1500
    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1501
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1502
    return-void

    .line 1504
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 1505
    .local v0, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1506
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1507
    iget-boolean v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v1, :cond_1

    .line 1508
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1510
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    .line 1511
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1489
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1490
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1491
    .local v1, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1494
    :cond_0
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean v2, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1495
    return-object v1
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 408
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    .line 412
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 413
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1094
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_3

    .line 1095
    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1096
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1097
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/widget/R$id;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1098
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1101
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1102
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1103
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1104
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 1111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1113
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    .line 1115
    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1
    .param p1, "maxLength"    # I

    .line 1134
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_2

    .line 1135
    if-lez p1, :cond_0

    .line 1136
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    goto :goto_0

    .line 1138
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    .line 1140
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 1144
    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1151
    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1153
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 1072
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 1081
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1084
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->hideError()V

    .line 1086
    :goto_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 983
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorEnabled(Z)V

    .line 984
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 992
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 993
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 1039
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1047
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    .line 1049
    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1022
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 1023
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1001
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 1002
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 879
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 881
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 883
    :cond_0
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 965
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 966
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 968
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 971
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 973
    :cond_0
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textAppearance"    # I

    .line 1195
    const/4 v0, 0x0

    .line 1197
    .local v0, "useDefaultColor":Z
    :try_start_0
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 1200
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, -0xff01

    if-ne v1, v2, :cond_0

    .line 1204
    const/4 v0, 0x1

    .line 1210
    :cond_0
    goto :goto_0

    .line 1206
    :catch_0
    move-exception v1

    .line 1209
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 1211
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 1214
    sget v1, Landroid/support/design/widget/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1215
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/widget/R$color;->design_error:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1217
    :cond_1
    return-void
.end method

.method updateCounter(I)V
    .locals 8
    .param p1, "length"    # I

    .line 1175
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1176
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1177
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    goto :goto_2

    .line 1180
    :cond_0
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1181
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 1182
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    :goto_1
    invoke-virtual {p0, v1, v4}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1185
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1186
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/widget/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    :goto_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_4

    .line 1189
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1190
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1192
    :cond_4
    return-void
.end method

.method updateEditTextBackground()V
    .locals 3

    .line 1366
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1367
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1371
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 1372
    return-void

    .line 1375
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1377
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1378
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1381
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1383
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1385
    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1384
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1383
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1386
    :cond_3
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1388
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1390
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1389
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1388
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1394
    :cond_4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1395
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 1397
    :goto_0
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 827
    return-void
.end method

.method updateTextInputBoxState()V
    .locals 4

    .line 1973
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1977
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1978
    .local v0, "hasFocus":Z
    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 1981
    .local v1, "isHovered":Z
    :cond_2
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1982
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1983
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 1984
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1985
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 1986
    :cond_4
    if-eqz v0, :cond_5

    .line 1987
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 1988
    :cond_5
    if-eqz v1, :cond_6

    .line 1989
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_1

    .line 1991
    :cond_6
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    .line 1994
    :goto_1
    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1995
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_2

    .line 1997
    :cond_8
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 1999
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 2001
    :cond_9
    return-void

    .line 1974
    .end local v0    # "hasFocus":Z
    .end local v1    # "isHovered":Z
    :cond_a
    :goto_3
    return-void
.end method
