.class public Landroid/support/v17/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DOT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_DIAMETER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field mArrow:Landroid/graphics/Bitmap;

.field final mArrowDiameter:I

.field private final mArrowGap:I

.field mArrowPaint:Landroid/graphics/Paint;

.field final mArrowRadius:I

.field final mArrowRect:Landroid/graphics/Rect;

.field final mArrowToBgRatio:F

.field final mBgPaint:Landroid/graphics/Paint;

.field private mCurrentPage:I

.field mDotCenterY:I

.field final mDotDiameter:I

.field mDotFgSelectColor:I

.field private final mDotGap:I

.field final mDotRadius:I

.field private mDotSelectedNextX:[I

.field private mDotSelectedPrevX:[I

.field private mDotSelectedX:[I

.field private mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

.field final mFgPaint:Landroid/graphics/Paint;

.field private final mHideAnimator:Landroid/animation/AnimatorSet;

.field mIsLtr:Z

.field private mPageCount:I

.field private mPreviousPage:I

.field private final mShadowRadius:I

.field private final mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 58
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    .line 71
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    .line 84
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$3;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    move-object/from16 v0, p0

    .line 142
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 144
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v2, Landroid/support/v17/leanback/R$styleable;->PagingIndicator:[I

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 146
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    sget v7, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_lbDotRadius:I

    sget v8, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    invoke-direct {v0, v2, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    .line 148
    iget v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    .line 149
    sget v7, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    invoke-direct {v0, v2, v7, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    .line 151
    iget v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/2addr v7, v8

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    .line 152
    sget v7, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    invoke-direct {v0, v2, v7, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    .line 154
    sget v7, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v9, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    invoke-direct {v0, v2, v7, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    .line 157
    sget v7, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    sget v9, Landroid/support/v17/leanback/R$color;->lb_page_indicator_dot:I

    invoke-direct {v0, v2, v7, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v7

    .line 159
    .local v7, "dotBgColor":I
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    .line 160
    iget-object v9, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    sget v9, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    sget v11, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_background:I

    invoke-direct {v0, v2, v9, v11}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v9

    iput v9, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 164
    iget-object v9, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_0

    sget v9, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 165
    sget v9, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 167
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    if-nez v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    iput-boolean v9, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 170
    sget v9, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 171
    .local v9, "shadowColor":I
    sget v11, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    .line 172
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    .line 173
    sget v11, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 174
    .local v11, "shadowOffset":I
    iget-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v13, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    int-to-float v13, v13

    int-to-float v14, v11

    int-to-float v15, v11

    invoke-virtual {v12, v13, v14, v15, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 175
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 176
    new-instance v12, Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v14, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v12, v3, v3, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    .line 177
    iget-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iput v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    .line 179
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 180
    iget-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v14, v13, [Landroid/animation/Animator;

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v0, v13, v15}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v16

    aput-object v16, v14, v3

    iget v3, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/2addr v3, v8

    int-to-float v3, v3

    iget v13, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/2addr v13, v8

    int-to-float v13, v13

    .line 181
    invoke-direct {v0, v3, v13}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v14, v10

    .line 182
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v14, v8

    .line 180
    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 183
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 184
    iget-object v3, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    invoke-direct {v0, v15, v13}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    iget v13, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/2addr v13, v8

    int-to-float v13, v13

    iget v14, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/2addr v14, v8

    int-to-float v14, v14

    .line 185
    invoke-direct {v0, v13, v14}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v13

    aput-object v13, v12, v10

    .line 186
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v13

    aput-object v13, v12, v8

    .line 184
    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    iget-object v3, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v8, v8, [Landroid/animation/Animator;

    iget-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v13, 0x0

    aput-object v12, v8, v13

    iget-object v12, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    aput-object v12, v8, v10

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    .line 190
    return-void
.end method

.method private adjustDotPosition()V
    .locals 5

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 431
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 432
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->select()V

    .line 435
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput v2, v0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 436
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 437
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    .restart local v0    # "i":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_3

    .line 438
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 439
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 440
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 437
    goto :goto_3

    .line 442
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private calculateDotPositions()V
    .locals 12

    .line 306
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    .line 307
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v1

    .line 308
    .local v1, "top":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 309
    .local v2, "right":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    .line 310
    .local v3, "requiredWidth":I
    add-int v4, v0, v2

    const/4 v5, 0x2

    div-int/2addr v4, v5

    .line 311
    .local v4, "mid":I
    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    .line 312
    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    .line 313
    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    .line 314
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    .line 315
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    .line 317
    .local v6, "startLeft":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v10, v6

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v10, v11

    aput v10, v9, v7

    .line 318
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v10, v6

    aput v10, v9, v7

    .line 319
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v10, v6

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v11, v5

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/2addr v5, v11

    add-int/2addr v10, v5

    aput v10, v9, v7

    .line 320
    nop

    .local v8, "i":I
    :goto_0
    move v5, v8

    .end local v8    # "i":I
    .local v5, "i":I
    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v5, v7, :cond_0

    .line 321
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v8, v9

    aput v8, v7, v5

    .line 322
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v8, v9

    aput v8, v7, v5

    .line 323
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v8, v9

    aput v8, v7, v5

    .line 320
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .restart local v8    # "i":I
    goto :goto_0

    .line 325
    .end local v6    # "startLeft":I
    .end local v8    # "i":I
    :cond_0
    goto :goto_2

    .line 326
    :cond_1
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    .line 328
    .local v6, "startRight":I
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v10, v6, v10

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v10, v11

    aput v10, v9, v7

    .line 329
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v10, v6, v10

    aput v10, v9, v7

    .line 330
    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v10, v6, v10

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v11, v5

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/2addr v5, v11

    sub-int/2addr v10, v5

    aput v10, v9, v7

    .line 331
    nop

    .restart local v8    # "i":I
    :goto_1
    move v5, v8

    .end local v8    # "i":I
    .restart local v5    # "i":I
    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v5, v7, :cond_2

    .line 332
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v8, v9

    aput v8, v7, v5

    .line 333
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v8, v9

    aput v8, v7, v5

    .line 334
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v9, v5, -0x1

    aget v8, v8, v9

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v8, v9

    aput v8, v7, v5

    .line 331
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 337
    .end local v6    # "startRight":I
    .end local v8    # "i":I
    :cond_2
    :goto_2
    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    .line 338
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->adjustDotPosition()V

    .line 339
    return-void
.end method

.method private createDotAlphaAnimator(FF)Landroid/animation/Animator;
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 248
    sget-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 249
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    return-object v0
.end method

.method private createDotDiameterAnimator(FF)Landroid/animation/Animator;
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 255
    sget-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1a1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    return-object v0
.end method

.method private createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 4

    .line 263
    sget-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 265
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1a1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    return-object v0
.end method

.method private getColorFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I
    .param p3, "defaultId"    # I

    .line 198
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 401
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 409
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I
    .param p3, "defaultId"    # I

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 193
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 405
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private loadArrow()Landroid/graphics/Bitmap;
    .locals 9

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_nav_arrow:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "arrow":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v1, :cond_0

    .line 204
    return-object v0

    .line 206
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 207
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 208
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, v0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method getDotSelectedLeftX()[I
    .locals 1

    .line 353
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    return-object v0
.end method

.method getDotSelectedRightX()[I
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    return-object v0
.end method

.method getDotSelectedX()[I
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .line 343
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->draw(Landroid/graphics/Canvas;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 363
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    .line 365
    .local v0, "desiredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 374
    move v1, v0

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 368
    .local v1, "height":I
    goto :goto_0

    .line 370
    .end local v1    # "height":I
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 371
    .restart local v1    # "height":I
    nop

    .line 374
    :goto_0
    nop

    .line 377
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result v4

    .line 379
    .local v4, "desiredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_2

    .line 388
    move v2, v4

    goto :goto_1

    .line 381
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 382
    .local v2, "width":I
    goto :goto_1

    .line 384
    .end local v2    # "width":I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 385
    .restart local v2    # "width":I
    nop

    .line 388
    :goto_1
    nop

    .line 391
    invoke-virtual {p0, v2, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    .line 392
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .line 446
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 447
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 448
    .local v1, "isLtr":Z
    :goto_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eq v2, v1, :cond_2

    .line 449
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 450
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 451
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 453
    .local v4, "dot":Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->onRtlPropertiesChanged()V

    .line 452
    .end local v4    # "dot":Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 457
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 459
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 396
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    .line 397
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 398
    return-void
.end method

.method public setArrowColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 220
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 225
    return-void
.end method
