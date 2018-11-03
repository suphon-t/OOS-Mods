.class public Landroid/support/v7/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Landroid/support/v7/widget/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Landroid/support/v7/widget/CardViewApi21Impl;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Landroid/support/v7/widget/CardViewApi17Impl;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewApi17Impl;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-direct {v0}, Landroid/support/v7/widget/CardViewBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    .line 92
    :goto_0
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    invoke-interface {v0}, Landroid/support/v7/widget/CardViewImpl;->initStatic()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 117
    sget v0, Landroid/support/v7/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    move-object/from16 v0, p0

    .line 121
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 447
    new-instance v1, Landroid/support/v7/widget/CardView$1;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/CardView$1;-><init>(Landroid/support/v7/widget/CardView;)V

    iput-object v1, v0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    .line 123
    sget-object v1, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    sget v2, Landroid/support/v7/cardview/R$style;->CardView:I

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v10, v11, v1, v12, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 127
    sget v2, Landroid/support/v7/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 137
    .local v6, "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_0
    move-object v6, v2

    goto :goto_2

    .line 130
    .end local v6    # "backgroundColor":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/support/v7/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 131
    .local v2, "aa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 132
    .local v4, "themeColorBackground":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 136
    .local v5, "hsv":[F
    invoke-static {v4, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 137
    const/4 v6, 0x2

    aget v6, v5, v6

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v7/cardview/R$color;->cardview_light_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroid/support/v7/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 137
    :goto_1
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .end local v2    # "aa":Landroid/content/res/TypedArray;
    .end local v4    # "themeColorBackground":I
    .end local v5    # "hsv":[F
    goto :goto_0

    .line 141
    .restart local v6    # "backgroundColor":Landroid/content/res/ColorStateList;
    :goto_2
    sget v2, Landroid/support/v7/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 142
    .local v2, "radius":F
    sget v5, Landroid/support/v7/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 143
    .local v13, "elevation":F
    sget v5, Landroid/support/v7/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 144
    .local v4, "maxElevation":F
    sget v5, Landroid/support/v7/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    .line 145
    sget v5, Landroid/support/v7/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    .line 146
    sget v5, Landroid/support/v7/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 147
    .local v14, "defaultPadding":I
    iget-object v5, v0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object v5, v0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 151
    iget-object v5, v0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 153
    iget-object v5, v0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v7, Landroid/support/v7/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 155
    cmpl-float v5, v13, v4

    if-lez v5, :cond_2

    .line 156
    move v4, v13

    .line 158
    .end local v4    # "maxElevation":F
    .local v15, "maxElevation":F
    :cond_2
    move v15, v4

    sget v4, Landroid/support/v7/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 159
    sget v4, Landroid/support/v7/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 160
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    sget-object v3, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v4, v0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    move-object v5, v10

    move v7, v2

    move v8, v13

    move v9, v15

    invoke-interface/range {v3 .. v9}, Landroid/support/v7/widget/CardViewImpl;->initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 164
    return-void
.end method

.method static synthetic access$001(Landroid/support/v7/widget/CardView;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Landroid/support/v7/widget/CardView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/CardView;
    .param p1, "x1"    # I

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 303
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->getBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroid/support/v7/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 232
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    instance-of v0, v0, Landroid/support/v7/widget/CardViewApi21Impl;

    if-nez v0, :cond_2

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 234
    .local v0, "widthMode":I
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    sget-object v3, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v4, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/CardViewImpl;->getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 238
    .local v3, "minWidth":I
    nop

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 238
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 240
    nop

    .line 246
    .end local v3    # "minWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 247
    .local v3, "heightMode":I
    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    sget-object v1, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v2, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v1, v2}, Landroid/support/v7/widget/CardViewImpl;->getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 251
    .local v1, "minHeight":I
    nop

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 253
    nop

    .line 258
    .end local v1    # "minHeight":I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    .end local v0    # "widthMode":I
    .end local v3    # "heightMode":I
    goto :goto_2

    .line 260
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 262
    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 283
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/CardViewImpl;->setBackgroundColor(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    .line 284
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/CardViewImpl;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    .line 228
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 272
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinHeight:I

    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 274
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 266
    iput p1, p0, Landroid/support/v7/widget/CardView;->mUserSetMinWidth:I

    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 268
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 169
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 174
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 354
    sget-object v0, Landroid/support/v7/widget/CardView;->IMPL:Landroid/support/v7/widget/CardViewImpl;

    iget-object v1, p0, Landroid/support/v7/widget/CardView;->mCardViewDelegate:Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/CardViewImpl;->setRadius(Landroid/support/v7/widget/CardViewDelegate;F)V

    .line 355
    return-void
.end method
