.class public Lcom/google/android/flexbox/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mAlignContent:I

.field private mAlignItems:I

.field private mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

.field private mDividerHorizontalHeight:I

.field private mDividerVerticalWidth:I

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private mFlexWrap:I

.field private mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field private mJustifyContent:I

.field private mOrderCache:Landroid/util/SparseIntArray;

.field private mReorderedIndices:[I

.field private mShowDividerHorizontal:I

.field private mShowDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 191
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 199
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 212
    sget-object v0, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexDirection:I

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    .line 216
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_flexWrap:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 217
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_justifyContent:I

    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .line 219
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignItems:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    .line 220
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_alignContent:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    .line 221
    sget v2, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 222
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    sget v3, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableHorizontal:I

    .line 227
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    .local v3, "drawableHorizontal":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_1
    sget v4, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_dividerDrawableVertical:I

    .line 232
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 233
    .local v4, "drawableVertical":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_2
    sget v5, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDivider:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 237
    .local v5, "dividerMode":I
    if-eqz v5, :cond_3

    .line 238
    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 239
    iput v5, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 241
    :cond_3
    sget v6, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerVertical:I

    .line 242
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 243
    .local v6, "dividerModeVertical":I
    if-eqz v6, :cond_4

    .line 244
    iput v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 246
    :cond_4
    sget v7, Lcom/google/android/flexbox/R$styleable;->FlexboxLayout_showDividerHorizontal:I

    .line 247
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 248
    .local v1, "dividerModeHorizontal":I
    if-eqz v1, :cond_5

    .line 249
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 251
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 1489
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1490
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_0

    .line 1491
    return v0

    .line 1489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "indexInFlexLine"    # I

    .line 1454
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 1455
    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1456
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1457
    const/4 v0, 0x0

    return v0

    .line 1454
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isRtl"    # Z
    .param p3, "fromBottomToTop"    # Z

    move-object v0, p0

    move-object/from16 v1, p1

    .line 930
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    .line 931
    .local v2, "paddingLeft":I
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v3

    .line 932
    .local v3, "paddingRight":I
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 933
    .local v4, "horizontalDividerLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_b

    .line 934
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 935
    .local v8, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move v9, v5

    .local v9, "j":I
    :goto_1
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v9, v10, :cond_6

    .line 936
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v9

    .line 937
    .local v10, "viewIndex":I
    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 938
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 939
    nop

    .line 935
    move v14, v3

    goto :goto_5

    .line 941
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 944
    .local v12, "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 946
    if-eqz p2, :cond_1

    .line 947
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v5

    .local v13, "dividerLeft":I
    goto :goto_2

    .line 949
    .end local v13    # "dividerLeft":I
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v13, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v13

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int v13, v5, v13

    .restart local v13    # "dividerLeft":I
    :goto_2
    move v5, v13

    .line 952
    .end local v13    # "dividerLeft":I
    .local v5, "dividerLeft":I
    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mTop:I

    move v14, v3

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .end local v3    # "paddingRight":I
    .local v14, "paddingRight":I
    invoke-direct {v0, v1, v5, v13, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .end local v5    # "dividerLeft":I
    goto :goto_3

    .line 956
    .end local v14    # "paddingRight":I
    .restart local v3    # "paddingRight":I
    :cond_2
    move v14, v3

    .end local v3    # "paddingRight":I
    .restart local v14    # "paddingRight":I
    :goto_3
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_5

    .line 957
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_5

    .line 959
    if-eqz p2, :cond_3

    .line 960
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v5

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v3, v5

    .local v3, "dividerLeft":I
    goto :goto_4

    .line 962
    .end local v3    # "dividerLeft":I
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v3

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 965
    .restart local v3    # "dividerLeft":I
    :goto_4
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mTop:I

    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v1, v3, v5, v13}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .end local v3    # "dividerLeft":I
    .end local v10    # "viewIndex":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    goto :goto_5

    .line 935
    .end local v14    # "paddingRight":I
    .local v3, "paddingRight":I
    :cond_4
    move v14, v3

    .end local v3    # "paddingRight":I
    .restart local v14    # "paddingRight":I
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v3, v14

    const/4 v5, 0x0

    goto :goto_1

    .line 972
    .end local v9    # "j":I
    .end local v14    # "paddingRight":I
    .restart local v3    # "paddingRight":I
    :cond_6
    move v14, v3

    .end local v3    # "paddingRight":I
    .restart local v14    # "paddingRight":I
    invoke-direct {v0, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 974
    if-eqz p3, :cond_7

    .line 975
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .local v3, "horizontalDividerTop":I
    goto :goto_6

    .line 977
    .end local v3    # "horizontalDividerTop":I
    :cond_7
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTop:I

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v3, v5

    .line 979
    .restart local v3    # "horizontalDividerTop":I
    :goto_6
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 983
    .end local v3    # "horizontalDividerTop":I
    :cond_8
    invoke-direct {v0, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 984
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_a

    .line 986
    if-eqz p3, :cond_9

    .line 987
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTop:I

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v3, v5

    .restart local v3    # "horizontalDividerTop":I
    goto :goto_7

    .line 989
    .end local v3    # "horizontalDividerTop":I
    :cond_9
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mBottom:I

    .line 991
    .restart local v3    # "horizontalDividerTop":I
    :goto_7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 933
    .end local v3    # "horizontalDividerTop":I
    .end local v8    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 996
    .end local v6    # "i":I
    .end local v7    # "size":I
    .end local v14    # "paddingRight":I
    .local v3, "paddingRight":I
    :cond_b
    move v14, v3

    .end local v3    # "paddingRight":I
    .restart local v14    # "paddingRight":I
    return-void
.end method

.method private drawDividersVertical(Landroid/graphics/Canvas;ZZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isRtl"    # Z
    .param p3, "fromBottomToTop"    # Z

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1010
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v2

    .line 1011
    .local v2, "paddingTop":I
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v3

    .line 1012
    .local v3, "paddingBottom":I
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1013
    .local v4, "verticalDividerLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_b

    .line 1014
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 1017
    .local v8, "flexLine":Lcom/google/android/flexbox/FlexLine;
    move v9, v5

    .local v9, "j":I
    :goto_1
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v9, v10, :cond_6

    .line 1018
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v9

    .line 1019
    .local v10, "viewIndex":I
    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1020
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 1021
    nop

    .line 1017
    move v14, v3

    goto :goto_5

    .line 1023
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 1026
    .local v12, "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    invoke-direct {v0, v10, v9}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1028
    if-eqz p3, :cond_1

    .line 1029
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v5

    .local v13, "dividerTop":I
    goto :goto_2

    .line 1031
    .end local v13    # "dividerTop":I
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    iget v13, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v13

    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int v13, v5, v13

    .restart local v13    # "dividerTop":I
    :goto_2
    move v5, v13

    .line 1034
    .end local v13    # "dividerTop":I
    .local v5, "dividerTop":I
    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    move v14, v3

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .end local v3    # "paddingBottom":I
    .local v14, "paddingBottom":I
    invoke-direct {v0, v1, v13, v5, v3}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .end local v5    # "dividerTop":I
    goto :goto_3

    .line 1038
    .end local v14    # "paddingBottom":I
    .restart local v3    # "paddingBottom":I
    :cond_2
    move v14, v3

    .end local v3    # "paddingBottom":I
    .restart local v14    # "paddingBottom":I
    :goto_3
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_5

    .line 1039
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_5

    .line 1041
    if-eqz p3, :cond_3

    .line 1042
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v3, v5

    .local v3, "dividerTop":I
    goto :goto_4

    .line 1044
    .end local v3    # "dividerTop":I
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v5, v12, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    .line 1047
    .restart local v3    # "dividerTop":I
    :goto_4
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {v0, v1, v5, v3, v13}, Lcom/google/android/flexbox/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .end local v3    # "dividerTop":I
    .end local v10    # "viewIndex":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    goto :goto_5

    .line 1017
    .end local v14    # "paddingBottom":I
    .local v3, "paddingBottom":I
    :cond_4
    move v14, v3

    .end local v3    # "paddingBottom":I
    .restart local v14    # "paddingBottom":I
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v3, v14

    const/4 v5, 0x0

    goto :goto_1

    .line 1054
    .end local v9    # "j":I
    .end local v14    # "paddingBottom":I
    .restart local v3    # "paddingBottom":I
    :cond_6
    move v14, v3

    .end local v3    # "paddingBottom":I
    .restart local v14    # "paddingBottom":I
    invoke-direct {v0, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1056
    if-eqz p2, :cond_7

    .line 1057
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .local v3, "verticalDividerLeft":I
    goto :goto_6

    .line 1059
    .end local v3    # "verticalDividerLeft":I
    :cond_7
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v3, v5

    .line 1061
    .restart local v3    # "verticalDividerLeft":I
    :goto_6
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 1064
    .end local v3    # "verticalDividerLeft":I
    :cond_8
    invoke-direct {v0, v6}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1065
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_a

    .line 1067
    if-eqz p2, :cond_9

    .line 1068
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mLeft:I

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v3, v5

    .restart local v3    # "verticalDividerLeft":I
    goto :goto_7

    .line 1070
    .end local v3    # "verticalDividerLeft":I
    :cond_9
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mRight:I

    .line 1072
    .restart local v3    # "verticalDividerLeft":I
    :goto_7
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 1013
    .end local v3    # "verticalDividerLeft":I
    .end local v8    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1077
    .end local v6    # "i":I
    .end local v7    # "size":I
    .end local v14    # "paddingBottom":I
    .local v3, "paddingBottom":I
    :cond_b
    move v14, v3

    .end local v3    # "paddingBottom":I
    .restart local v14    # "paddingBottom":I
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 1088
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1089
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    add-int v1, p2, p4

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v2, p3

    .line 1092
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1093
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1094
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 1080
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1081
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int v2, p3, p4

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1085
    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "indexInFlexLine"    # I

    .line 1438
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1442
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 1445
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1446
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    .line 1448
    :cond_5
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 1470
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1474
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1475
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 1477
    :cond_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 1480
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1481
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 1483
    :cond_6
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    move v0, v2

    nop

    :cond_7
    return v0

    .line 1471
    :cond_8
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 1504
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 1508
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1509
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_1

    .line 1510
    return v0

    .line 1508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1514
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 1516
    :cond_4
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 1505
    :cond_6
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 29
    .param p1, "isRtl"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    .line 610
    .local v1, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v2

    .line 615
    .local v2, "paddingRight":I
    sub-int v5, p5, p3

    .line 616
    .local v5, "height":I
    sub-int v8, p4, p2

    .line 619
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v9

    sub-int v9, v5, v9

    .line 620
    .local v9, "childBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v10

    .line 626
    .local v10, "childTop":I
    const/4 v11, 0x0

    .local v11, "i":I
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .local v12, "size":I
    :goto_0
    if-ge v11, v12, :cond_c

    .line 627
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexLine;

    .line 628
    .local v13, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {v0, v11}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 629
    iget v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    sub-int/2addr v9, v14

    .line 630
    iget v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v10, v14

    .line 632
    :cond_0
    const/4 v14, 0x0

    .line 633
    .local v14, "spaceBetweenItem":F
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    const/high16 v15, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_0

    .line 663
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v22, v5

    move/from16 v27, v8

    move/from16 v28, v12

    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v5    # "height":I
    .end local v8    # "width":I
    .end local v12    # "size":I
    .local v22, "height":I
    .local v24, "paddingLeft":I
    .local v25, "paddingRight":I
    .local v27, "width":I
    .local v28, "size":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    .end local v22    # "height":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v27    # "width":I
    .end local v28    # "size":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "paddingRight":I
    .restart local v5    # "height":I
    .restart local v8    # "width":I
    .restart local v12    # "size":I
    :pswitch_0
    invoke-virtual {v13}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v3

    .line 648
    .local v3, "visibleCount":I
    if-eqz v3, :cond_1

    .line 649
    iget v4, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    move/from16 v22, v5

    int-to-float v5, v3

    .end local v5    # "height":I
    .restart local v22    # "height":I
    div-float v14, v4, v5

    goto :goto_1

    .line 652
    .end local v22    # "height":I
    .restart local v5    # "height":I
    :cond_1
    move/from16 v22, v5

    .end local v5    # "height":I
    .restart local v22    # "height":I
    :goto_1
    int-to-float v4, v1

    div-float v5, v14, v15

    add-float/2addr v4, v5

    .line 653
    .local v4, "childLeft":F
    sub-int v5, v8, v2

    int-to-float v5, v5

    div-float v15, v14, v15

    sub-float/2addr v5, v15

    .line 654
    .local v5, "childRight":F
    goto :goto_3

    .line 656
    .end local v3    # "visibleCount":I
    .end local v4    # "childLeft":F
    .end local v22    # "height":I
    .local v5, "height":I
    :pswitch_1
    move/from16 v22, v5

    .end local v5    # "height":I
    .restart local v22    # "height":I
    int-to-float v4, v1

    .line 657
    .restart local v4    # "childLeft":F
    invoke-virtual {v13}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v3

    .line 658
    .local v3, "visibleItem":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 659
    .local v5, "denominator":F
    :goto_2
    move/from16 v23, v3

    iget v3, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .end local v3    # "visibleItem":I
    .local v23, "visibleItem":I
    sub-int v3, v8, v3

    int-to-float v3, v3

    div-float v14, v3, v5

    .line 660
    sub-int v3, v8, v2

    int-to-float v3, v3

    .line 661
    .local v3, "childRight":F
    nop

    .line 663
    move v5, v3

    goto :goto_3

    .line 643
    .end local v3    # "childRight":F
    .end local v4    # "childLeft":F
    .end local v22    # "height":I
    .end local v23    # "visibleItem":I
    .local v5, "height":I
    :pswitch_2
    move/from16 v22, v5

    .end local v5    # "height":I
    .restart local v22    # "height":I
    int-to-float v3, v1

    iget v4, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v8, v4

    int-to-float v4, v4

    div-float/2addr v4, v15

    add-float/2addr v4, v3

    .line 644
    .restart local v4    # "childLeft":F
    sub-int v3, v8, v2

    int-to-float v3, v3

    iget v5, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v5, v8, v5

    int-to-float v5, v5

    div-float/2addr v5, v15

    sub-float v5, v3, v5

    .line 645
    .local v5, "childRight":F
    goto :goto_3

    .line 639
    .end local v4    # "childLeft":F
    .end local v22    # "height":I
    .local v5, "height":I
    :pswitch_3
    move/from16 v22, v5

    .end local v5    # "height":I
    .restart local v22    # "height":I
    iget v3, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v3, v8, v3

    add-int/2addr v3, v2

    int-to-float v4, v3

    .line 640
    .restart local v4    # "childLeft":F
    iget v3, v13, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v1

    int-to-float v5, v3

    .line 641
    .local v5, "childRight":F
    goto :goto_3

    .line 635
    .end local v4    # "childLeft":F
    .end local v22    # "height":I
    .local v5, "height":I
    :pswitch_4
    move/from16 v22, v5

    .end local v5    # "height":I
    .restart local v22    # "height":I
    int-to-float v4, v1

    .line 636
    .restart local v4    # "childLeft":F
    sub-int v3, v8, v2

    int-to-float v5, v3

    .line 637
    .local v5, "childRight":F
    nop

    .line 663
    :goto_3
    move v3, v4

    .end local v4    # "childLeft":F
    .local v3, "childLeft":F
    move v4, v5

    .line 666
    .end local v5    # "childRight":F
    .local v4, "childRight":F
    const/4 v5, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 668
    .end local v14    # "spaceBetweenItem":F
    .local v5, "spaceBetweenItem":F
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    move/from16 v24, v1

    iget v1, v13, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .end local v1    # "paddingLeft":I
    .restart local v24    # "paddingLeft":I
    if-ge v14, v1, :cond_b

    .line 669
    iget v1, v13, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v1, v14

    .line 670
    .local v1, "index":I
    move/from16 v25, v2

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 671
    .local v2, "child":Landroid/view/View;
    .restart local v25    # "paddingRight":I
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 672
    nop

    .line 668
    move/from16 v27, v8

    move/from16 v28, v12

    move v12, v14

    const/16 v21, 0x1

    goto/16 :goto_8

    .line 674
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 675
    .local v6, "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    iget v7, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 676
    iget v7, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    .line 677
    const/4 v7, 0x0

    .line 678
    .local v7, "beforeDividerLength":I
    const/4 v15, 0x0

    .line 679
    .local v15, "endDividerLength":I
    invoke-direct {v0, v1, v14}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 680
    iget v7, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 681
    move/from16 v26, v1

    int-to-float v1, v7

    .end local v1    # "index":I
    .local v26, "index":I
    add-float/2addr v3, v1

    .line 682
    int-to-float v1, v7

    sub-float/2addr v4, v1

    goto :goto_5

    .line 684
    .end local v26    # "index":I
    .restart local v1    # "index":I
    :cond_4
    move/from16 v26, v1

    .end local v1    # "index":I
    .restart local v26    # "index":I
    :goto_5
    iget v1, v13, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v21, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_5

    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_5

    .line 685
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .end local v15    # "endDividerLength":I
    .local v1, "endDividerLength":I
    goto :goto_6

    .line 688
    .end local v1    # "endDividerLength":I
    .restart local v15    # "endDividerLength":I
    :cond_5
    move v1, v15

    .end local v15    # "endDividerLength":I
    .restart local v1    # "endDividerLength":I
    :goto_6
    move/from16 v27, v8

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .end local v8    # "width":I
    .restart local v27    # "width":I
    move/from16 v28, v12

    const/4 v12, 0x2

    .end local v12    # "size":I
    .restart local v28    # "size":I
    if-ne v8, v12, :cond_7

    .line 689
    if-eqz p1, :cond_6

    .line 690
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 691
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v17, v12, v15

    .line 692
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v18, v9, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 690
    move v12, v14

    move-object v14, v8

    .end local v14    # "j":I
    .local v12, "j":I
    move-object v15, v2

    move-object/from16 v16, v13

    move/from16 v20, v9

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_7

    .line 695
    .end local v12    # "j":I
    .restart local v14    # "j":I
    :cond_6
    move v12, v14

    .end local v14    # "j":I
    .restart local v12    # "j":I
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 696
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v18, v9, v8

    .line 697
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v19, v8, v15

    .line 695
    move-object v15, v2

    move-object/from16 v16, v13

    move/from16 v20, v9

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_7

    .line 700
    .end local v12    # "j":I
    .restart local v14    # "j":I
    :cond_7
    move v12, v14

    .end local v14    # "j":I
    .restart local v12    # "j":I
    if-eqz p1, :cond_8

    .line 701
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 702
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v17, v8, v15

    .line 703
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 704
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v20, v10, v8

    .line 701
    move-object v15, v2

    move-object/from16 v16, v13

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_7

    .line 706
    :cond_8
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 707
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 708
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v19, v8, v15

    .line 709
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v20, v10, v8

    .line 706
    move-object v15, v2

    move-object/from16 v16, v13

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 712
    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    iget v14, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v14, v14

    add-float/2addr v8, v14

    add-float/2addr v3, v8

    .line 713
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    iget v14, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v14, v14

    add-float/2addr v8, v14

    sub-float/2addr v4, v8

    .line 715
    if-eqz p1, :cond_9

    .line 716
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    move-object v15, v2

    move/from16 v16, v1

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_8

    .line 719
    :cond_9
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    move-object v15, v2

    move/from16 v16, v7

    move/from16 v18, v1

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .end local v1    # "endDividerLength":I
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .end local v7    # "beforeDividerLength":I
    .end local v26    # "index":I
    goto :goto_8

    .line 668
    .end local v27    # "width":I
    .end local v28    # "size":I
    .restart local v8    # "width":I
    .local v12, "size":I
    .restart local v14    # "j":I
    :cond_a
    move/from16 v27, v8

    move/from16 v28, v12

    move v12, v14

    const/16 v21, 0x1

    .end local v8    # "width":I
    .end local v14    # "j":I
    .local v12, "j":I
    .restart local v27    # "width":I
    .restart local v28    # "size":I
    :goto_8
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "j":I
    .restart local v14    # "j":I
    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v8, v27

    move/from16 v12, v28

    goto/16 :goto_4

    .line 723
    .end local v14    # "j":I
    .end local v25    # "paddingRight":I
    .end local v27    # "width":I
    .end local v28    # "size":I
    .local v2, "paddingRight":I
    .restart local v8    # "width":I
    .local v12, "size":I
    :cond_b
    move/from16 v25, v2

    move/from16 v27, v8

    move/from16 v28, v12

    .end local v2    # "paddingRight":I
    .end local v8    # "width":I
    .end local v12    # "size":I
    .restart local v25    # "paddingRight":I
    .restart local v27    # "width":I
    .restart local v28    # "size":I
    iget v1, v13, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v10, v1

    .line 724
    iget v1, v13, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v9, v1

    .line 626
    .end local v5    # "spaceBetweenItem":F
    .end local v13    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v22

    move/from16 v1, v24

    goto/16 :goto_0

    .line 726
    .end local v3    # "childLeft":F
    .end local v4    # "childRight":F
    .end local v11    # "i":I
    .end local v22    # "height":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v27    # "width":I
    .end local v28    # "size":I
    .local v1, "paddingLeft":I
    .restart local v2    # "paddingRight":I
    .local v5, "height":I
    .restart local v8    # "width":I
    :cond_c
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v22, v5

    move/from16 v27, v8

    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v5    # "height":I
    .end local v8    # "width":I
    .restart local v22    # "height":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v27    # "width":I
    return-void

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

.method private layoutVertical(ZZIIII)V
    .locals 33
    .param p1, "isRtl"    # Z
    .param p2, "fromBottomToTop"    # Z
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    move-object/from16 v0, p0

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v1

    .line 753
    .local v1, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    .line 755
    .local v2, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v3

    .line 756
    .local v3, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v4

    .line 758
    .local v4, "childLeft":I
    sub-int v7, p5, p3

    .line 759
    .local v7, "width":I
    sub-int v10, p6, p4

    .line 762
    .local v10, "height":I
    sub-int v11, v7, v3

    .line 771
    .local v11, "childRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_c

    .line 772
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexLine;

    .line 773
    .local v14, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {v0, v12}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 774
    move/from16 v23, v3

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .end local v3    # "paddingRight":I
    .local v23, "paddingRight":I
    add-int/2addr v4, v3

    .line 775
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    sub-int/2addr v11, v3

    goto :goto_1

    .line 777
    .end local v23    # "paddingRight":I
    .restart local v3    # "paddingRight":I
    :cond_0
    move/from16 v23, v3

    .end local v3    # "paddingRight":I
    .restart local v23    # "paddingRight":I
    :goto_1
    const/4 v3, 0x0

    .line 778
    .local v3, "spaceBetweenItem":F
    move/from16 v24, v3

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    .end local v3    # "spaceBetweenItem":F
    .local v24, "spaceBetweenItem":F
    const/high16 v15, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_0

    .line 808
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v7

    move/from16 v31, v10

    move/from16 v32, v13

    .end local v1    # "paddingTop":I
    .end local v2    # "paddingBottom":I
    .end local v7    # "width":I
    .end local v10    # "height":I
    .end local v13    # "size":I
    .local v27, "paddingTop":I
    .local v28, "paddingBottom":I
    .local v29, "width":I
    .local v31, "height":I
    .local v32, "size":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayout;->mJustifyContent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    .end local v27    # "paddingTop":I
    .end local v28    # "paddingBottom":I
    .end local v29    # "width":I
    .end local v31    # "height":I
    .end local v32    # "size":I
    .restart local v1    # "paddingTop":I
    .restart local v2    # "paddingBottom":I
    .restart local v7    # "width":I
    .restart local v10    # "height":I
    .restart local v13    # "size":I
    :pswitch_0
    invoke-virtual {v14}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v3

    .line 793
    .local v3, "visibleCount":I
    if-eqz v3, :cond_1

    .line 794
    iget v5, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v5, v10, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 797
    .end local v24    # "spaceBetweenItem":F
    .local v5, "spaceBetweenItem":F
    move/from16 v24, v5

    .end local v5    # "spaceBetweenItem":F
    .restart local v24    # "spaceBetweenItem":F
    :cond_1
    int-to-float v5, v1

    div-float v6, v24, v15

    add-float/2addr v5, v6

    .line 798
    .local v5, "childTop":F
    sub-int v6, v10, v2

    int-to-float v6, v6

    div-float v15, v24, v15

    sub-float/2addr v6, v15

    .line 799
    .local v6, "childBottom":F
    goto :goto_3

    .line 801
    .end local v3    # "visibleCount":I
    .end local v5    # "childTop":F
    .end local v6    # "childBottom":F
    :pswitch_1
    int-to-float v5, v1

    .line 802
    .restart local v5    # "childTop":F
    invoke-virtual {v14}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v3

    .line 803
    .local v3, "visibleItem":I
    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 804
    .local v6, "denominator":F
    :goto_2
    move/from16 v25, v3

    iget v3, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .end local v3    # "visibleItem":I
    .local v25, "visibleItem":I
    sub-int v3, v10, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 805
    .end local v24    # "spaceBetweenItem":F
    .local v3, "spaceBetweenItem":F
    move/from16 v26, v3

    sub-int v3, v10, v2

    .end local v3    # "spaceBetweenItem":F
    .local v26, "spaceBetweenItem":F
    int-to-float v3, v3

    .line 806
    .local v3, "childBottom":F
    nop

    .line 808
    move v6, v3

    move/from16 v3, v26

    goto :goto_4

    .line 788
    .end local v3    # "childBottom":F
    .end local v5    # "childTop":F
    .end local v6    # "denominator":F
    .end local v25    # "visibleItem":I
    .end local v26    # "spaceBetweenItem":F
    .restart local v24    # "spaceBetweenItem":F
    :pswitch_2
    int-to-float v3, v1

    iget v5, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v5, v10, v5

    int-to-float v5, v5

    div-float/2addr v5, v15

    add-float/2addr v5, v3

    .line 789
    .restart local v5    # "childTop":F
    sub-int v3, v10, v2

    int-to-float v3, v3

    iget v6, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v6, v10, v6

    int-to-float v6, v6

    div-float/2addr v6, v15

    sub-float v6, v3, v6

    .line 790
    .local v6, "childBottom":F
    goto :goto_3

    .line 784
    .end local v5    # "childTop":F
    .end local v6    # "childBottom":F
    :pswitch_3
    iget v3, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v3, v10, v3

    add-int/2addr v3, v2

    int-to-float v5, v3

    .line 785
    .restart local v5    # "childTop":F
    iget v3, v14, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v3, v1

    int-to-float v6, v3

    .line 786
    .restart local v6    # "childBottom":F
    goto :goto_3

    .line 780
    .end local v5    # "childTop":F
    .end local v6    # "childBottom":F
    :pswitch_4
    int-to-float v5, v1

    .line 781
    .restart local v5    # "childTop":F
    sub-int v3, v10, v2

    int-to-float v6, v3

    .line 782
    .restart local v6    # "childBottom":F
    nop

    .line 808
    .end local v24    # "spaceBetweenItem":F
    .local v3, "spaceBetweenItem":F
    :goto_3
    move/from16 v3, v24

    .line 811
    :goto_4
    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "paddingTop":I
    .restart local v27    # "paddingTop":I
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 813
    .end local v3    # "spaceBetweenItem":F
    .local v1, "spaceBetweenItem":F
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    move/from16 v28, v2

    iget v2, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .end local v2    # "paddingBottom":I
    .restart local v28    # "paddingBottom":I
    if-ge v3, v2, :cond_b

    .line 814
    iget v2, v14, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v3

    .line 815
    .local v2, "index":I
    move/from16 v29, v7

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 816
    .local v7, "child":Landroid/view/View;
    .restart local v29    # "width":I
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 817
    nop

    .line 813
    move/from16 v31, v10

    move/from16 v32, v13

    const/16 v24, 0x1

    goto/16 :goto_9

    .line 819
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 820
    .local v8, "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    iget v9, v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    .line 821
    iget v9, v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    .line 822
    const/4 v9, 0x0

    .line 823
    .local v9, "beforeDividerLength":I
    const/4 v15, 0x0

    .line 824
    .local v15, "endDividerLength":I
    invoke-direct {v0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 825
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 826
    move/from16 v30, v2

    int-to-float v2, v9

    .end local v2    # "index":I
    .local v30, "index":I
    add-float/2addr v5, v2

    .line 827
    int-to-float v2, v9

    sub-float/2addr v6, v2

    goto :goto_6

    .line 829
    .end local v30    # "index":I
    .restart local v2    # "index":I
    :cond_4
    move/from16 v30, v2

    .end local v2    # "index":I
    .restart local v30    # "index":I
    :goto_6
    iget v2, v14, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v24, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_5

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_5

    .line 831
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .end local v15    # "endDividerLength":I
    .local v2, "endDividerLength":I
    goto :goto_7

    .line 833
    .end local v2    # "endDividerLength":I
    .restart local v15    # "endDividerLength":I
    :cond_5
    move v2, v15

    .end local v15    # "endDividerLength":I
    .restart local v2    # "endDividerLength":I
    :goto_7
    if-eqz p1, :cond_7

    .line 834
    if-eqz p2, :cond_6

    .line 835
    move/from16 v31, v10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .end local v10    # "height":I
    .restart local v31    # "height":I
    const/16 v18, 0x1

    .line 836
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v19, v11, v15

    .line 837
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v20, v15, v16

    .line 838
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 835
    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_8

    .line 840
    .end local v31    # "height":I
    .restart local v10    # "height":I
    :cond_6
    move/from16 v31, v10

    .end local v10    # "height":I
    .restart local v31    # "height":I
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    const/16 v18, 0x1

    .line 841
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v19, v11, v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 842
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v22, v15, v16

    .line 840
    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_8

    .line 845
    .end local v31    # "height":I
    .restart local v10    # "height":I
    :cond_7
    move/from16 v31, v10

    .end local v10    # "height":I
    .restart local v31    # "height":I
    if-eqz p2, :cond_8

    .line 846
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    const/16 v18, 0x0

    .line 847
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v20, v15, v16

    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v21, v4, v15

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 846
    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move/from16 v19, v4

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_8

    .line 850
    :cond_8
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    const/16 v18, 0x0

    .line 851
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 852
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v21, v4, v15

    .line 853
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v22, v15, v16

    .line 850
    move-object v15, v10

    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move/from16 v19, v4

    invoke-virtual/range {v15 .. v22}, Lcom/google/android/flexbox/FlexboxHelper;->layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 856
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    move/from16 v32, v13

    iget v13, v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    .end local v13    # "size":I
    .restart local v32    # "size":I
    int-to-float v13, v13

    add-float/2addr v10, v13

    add-float/2addr v5, v10

    .line 857
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    iget v13, v8, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    int-to-float v13, v13

    add-float/2addr v10, v13

    sub-float/2addr v6, v10

    .line 859
    if-eqz p2, :cond_9

    .line 860
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v14

    move-object/from16 v16, v7

    move/from16 v18, v2

    move/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_9

    .line 863
    :cond_9
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v14

    move-object/from16 v16, v7

    move/from16 v18, v9

    move/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/flexbox/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .end local v2    # "endDividerLength":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .end local v9    # "beforeDividerLength":I
    .end local v30    # "index":I
    goto :goto_9

    .line 813
    .end local v31    # "height":I
    .end local v32    # "size":I
    .restart local v10    # "height":I
    .restart local v13    # "size":I
    :cond_a
    move/from16 v31, v10

    move/from16 v32, v13

    const/16 v24, 0x1

    .end local v10    # "height":I
    .end local v13    # "size":I
    .restart local v31    # "height":I
    .restart local v32    # "size":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v28

    move/from16 v7, v29

    move/from16 v10, v31

    move/from16 v13, v32

    goto/16 :goto_5

    .line 867
    .end local v3    # "j":I
    .end local v29    # "width":I
    .end local v31    # "height":I
    .end local v32    # "size":I
    .local v7, "width":I
    .restart local v10    # "height":I
    .restart local v13    # "size":I
    :cond_b
    move/from16 v29, v7

    move/from16 v31, v10

    move/from16 v32, v13

    .end local v7    # "width":I
    .end local v10    # "height":I
    .end local v13    # "size":I
    .restart local v29    # "width":I
    .restart local v31    # "height":I
    .restart local v32    # "size":I
    iget v2, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v4, v2

    .line 868
    iget v2, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v11, v2

    .line 771
    .end local v1    # "spaceBetweenItem":F
    .end local v14    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v23

    move/from16 v1, v27

    move/from16 v2, v28

    goto/16 :goto_0

    .line 870
    .end local v5    # "childTop":F
    .end local v6    # "childBottom":F
    .end local v12    # "i":I
    .end local v23    # "paddingRight":I
    .end local v27    # "paddingTop":I
    .end local v28    # "paddingBottom":I
    .end local v29    # "width":I
    .end local v31    # "height":I
    .end local v32    # "size":I
    .local v1, "paddingTop":I
    .local v2, "paddingBottom":I
    .local v3, "paddingRight":I
    .restart local v7    # "width":I
    .restart local v10    # "height":I
    :cond_c
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v23, v3

    move/from16 v29, v7

    move/from16 v31, v10

    .end local v1    # "paddingTop":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingRight":I
    .end local v7    # "width":I
    .end local v10    # "height":I
    .restart local v23    # "paddingRight":I
    .restart local v27    # "paddingTop":I
    .restart local v28    # "paddingBottom":I
    .restart local v29    # "width":I
    .restart local v31    # "height":I
    return-void

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

.method private measureHorizontal(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 340
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 342
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 343
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 344
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 346
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 348
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 351
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 352
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 354
    .local v1, "flexLine":Lcom/google/android/flexbox/FlexLine;
    const/high16 v2, -0x80000000

    .line 355
    .local v2, "largestHeightInLine":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v3, v4, :cond_3

    .line 356
    iget v4, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v4, v3

    .line 357
    .local v4, "viewIndex":I
    invoke-virtual {p0, v4}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 358
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 359
    goto :goto_2

    .line 361
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 362
    .local v6, "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    iget v7, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 363
    iget v7, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v8

    sub-int/2addr v7, v8

    .line 364
    .local v7, "marginTop":I
    iget v8, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 365
    nop

    .line 366
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    iget v9, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 365
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 367
    .end local v7    # "marginTop":I
    goto :goto_2

    .line 368
    :cond_1
    iget v7, v1, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 369
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v8

    add-int/2addr v7, v8

    .line 370
    .local v7, "marginBottom":I
    iget v8, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->bottomMargin:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 371
    nop

    .line 372
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 371
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 355
    .end local v4    # "viewIndex":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .end local v7    # "marginBottom":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    .end local v3    # "i":I
    :cond_3
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 376
    .end local v1    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    .end local v2    # "largestHeightInLine":I
    goto :goto_0

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 380
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 379
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 383
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 384
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 386
    return-void
.end method

.method private measureVertical(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 401
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->reset()V

    .line 403
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V

    .line 405
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 407
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(II)V

    .line 408
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    .line 409
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 408
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxHelper;->determineCrossSize(III)V

    .line 412
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews()V

    .line 413
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLinesResult:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget v1, v1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimensionForFlex(IIII)V

    .line 415
    return-void
.end method

.method private setMeasuredDimensionForFlex(IIII)V
    .locals 10
    .param p1, "flexDirection"    # I
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I
    .param p4, "childState"    # I

    .line 430
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 431
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 432
    .local v1, "widthSize":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 433
    .local v2, "heightMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 436
    .local v3, "heightSize":I
    packed-switch p1, :pswitch_data_0

    .line 449
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid flex direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 445
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result v4

    .line 446
    .local v4, "calculatedMaxHeight":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 447
    .local v5, "calculatedMaxWidth":I
    goto :goto_0

    .line 439
    .end local v4    # "calculatedMaxHeight":I
    .end local v5    # "calculatedMaxWidth":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 440
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 441
    .restart local v4    # "calculatedMaxHeight":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getLargestMainSize()I

    move-result v5

    .line 442
    .restart local v5    # "calculatedMaxWidth":I
    nop

    .line 449
    :goto_0
    nop

    .line 453
    const/high16 v6, 0x1000000

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v0, v8, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v7, :cond_1

    .line 455
    if-ge v1, v5, :cond_0

    .line 456
    nop

    .line 457
    invoke-static {p4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 459
    :cond_0
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 461
    .local v6, "widthSizeAndState":I
    goto :goto_2

    .line 479
    .end local v6    # "widthSizeAndState":I
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown width mode is set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 474
    :cond_2
    nop

    .line 475
    invoke-static {v5, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 476
    .restart local v6    # "widthSizeAndState":I
    goto :goto_2

    .line 463
    .end local v6    # "widthSizeAndState":I
    :cond_3
    if-ge v1, v5, :cond_4

    .line 464
    nop

    .line 465
    invoke-static {p4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_1

    .line 467
    :cond_4
    move v1, v5

    .line 469
    :goto_1
    invoke-static {v1, p2, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 471
    .restart local v6    # "widthSizeAndState":I
    nop

    .line 479
    :goto_2
    nop

    .line 482
    const/16 v9, 0x100

    if-eq v2, v8, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v7, :cond_6

    .line 484
    if-ge v3, v4, :cond_5

    .line 485
    invoke-static {p4, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    .line 489
    :cond_5
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 491
    .local v7, "heightSizeAndState":I
    goto :goto_4

    .line 510
    .end local v7    # "heightSizeAndState":I
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown height mode is set: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 505
    :cond_7
    invoke-static {v4, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 507
    .restart local v7    # "heightSizeAndState":I
    goto :goto_4

    .line 493
    .end local v7    # "heightSizeAndState":I
    :cond_8
    if-ge v3, v4, :cond_9

    .line 494
    invoke-static {p4, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p4

    goto :goto_3

    .line 498
    :cond_9
    move v3, v4

    .line 500
    :goto_3
    invoke-static {v3, p3, p4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 502
    .restart local v7    # "heightSizeAndState":I
    nop

    .line 510
    :goto_4
    nop

    .line 512
    invoke-virtual {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxLayout;->setMeasuredDimension(II)V

    .line 513
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 1425
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDraw(Z)V

    .line 1427
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 315
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 323
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1098
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1108
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 1110
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1111
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1113
    :cond_1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1103
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 1175
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignContent:I

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mAlignItems:I

    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 1
    .param p1, "heightSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 1256
    invoke-static {p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 1
    .param p1, "widthSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 1251
    invoke-static {p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1229
    const/4 v0, 0x0

    return v0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "decorationLength":I
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1208
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    .line 1211
    :cond_0
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 1212
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1215
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1216
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    .line 1218
    :cond_2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 1219
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    .line 1222
    :cond_3
    :goto_0
    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 1133
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 517
    const/high16 v0, -0x80000000

    .line 518
    .local v0, "largestSize":I
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 519
    .local v2, "flexLine":Lcom/google/android/flexbox/FlexLine;
    iget v3, v2, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 520
    .end local v2    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    goto :goto_0

    .line 521
    :cond_0
    return v0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 302
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 303
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 528
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 531
    .local v3, "flexLine":Lcom/google/android/flexbox/FlexLine;
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_1

    .line 535
    :cond_0
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 540
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/flexbox/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 542
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_2

    .line 544
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 547
    :cond_3
    :goto_2
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v0, v4

    .line 527
    .end local v3    # "flexLine":Lcom/google/android/flexbox/FlexLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    return v0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 554
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 875
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 876
    return-void

    .line 878
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-nez v0, :cond_1

    .line 880
    return-void

    .line 883
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 885
    .local v0, "layoutDirection":I
    const/4 v1, 0x0

    .line 886
    .local v1, "fromBottomToTop":Z
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 909
    :pswitch_0
    if-ne v0, v5, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    .line 910
    .local v2, "isRtl":Z
    :goto_0
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v6, v3, :cond_4

    .line 911
    if-nez v2, :cond_3

    move v4, v5

    nop

    :cond_3
    move v2, v4

    .line 913
    :cond_4
    invoke-direct {p0, p1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .end local v2    # "isRtl":Z
    goto :goto_3

    .line 902
    :pswitch_1
    if-ne v0, v5, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    move v2, v4

    .line 903
    .restart local v2    # "isRtl":Z
    :goto_1
    iget v6, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v6, v3, :cond_7

    .line 904
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    move v2, v5

    .line 906
    :cond_7
    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersVertical(Landroid/graphics/Canvas;ZZ)V

    .line 907
    goto :goto_3

    .line 895
    .end local v2    # "isRtl":Z
    :pswitch_2
    if-eq v0, v5, :cond_8

    move v4, v5

    nop

    :cond_8
    move v2, v4

    .line 896
    .restart local v2    # "isRtl":Z
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_9

    .line 897
    const/4 v1, 0x1

    .line 899
    :cond_9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 900
    goto :goto_3

    .line 888
    .end local v2    # "isRtl":Z
    :pswitch_3
    if-ne v0, v5, :cond_a

    move v4, v5

    nop

    :cond_a
    move v2, v4

    .line 889
    .restart local v2    # "isRtl":Z
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v3, :cond_b

    .line 890
    const/4 v1, 0x1

    .line 892
    :cond_b
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/flexbox/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;ZZ)V

    .line 893
    nop

    .line 916
    .end local v2    # "isRtl":Z
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 559
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 561
    .local v7, "layoutDirection":I
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :pswitch_0
    if-ne v7, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 579
    .local v0, "isRtl":Z
    :goto_0
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v1, :cond_2

    .line 580
    if-nez v0, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .line 582
    .end local v0    # "isRtl":Z
    .local v8, "isRtl":Z
    :cond_2
    move v8, v0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 583
    goto :goto_5

    .line 571
    .end local v8    # "isRtl":Z
    :pswitch_1
    if-ne v7, v3, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 572
    .restart local v0    # "isRtl":Z
    :goto_1
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-ne v4, v1, :cond_5

    .line 573
    if-nez v0, :cond_4

    move v2, v3

    nop

    :cond_4
    move v0, v2

    .line 575
    .end local v0    # "isRtl":Z
    .restart local v8    # "isRtl":Z
    :cond_5
    move v8, v0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxLayout;->layoutVertical(ZZIIII)V

    .line 576
    goto :goto_5

    .line 567
    .end local v8    # "isRtl":Z
    :pswitch_2
    if-eq v7, v3, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v2

    .line 568
    .local v1, "isRtl":Z
    :goto_2
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 569
    goto :goto_4

    .line 563
    .end local v1    # "isRtl":Z
    :pswitch_3
    if-ne v7, v3, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    .line 564
    .restart local v1    # "isRtl":Z
    :goto_3
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/flexbox/FlexboxLayout;->layoutHorizontal(ZIIII)V

    .line 565
    nop

    .line 585
    .end local v1    # "isRtl":Z
    .restart local v8    # "isRtl":Z
    :goto_4
    move v8, v1

    :goto_5
    move v0, v8

    .line 587
    .end local v8    # "isRtl":Z
    .restart local v0    # "isRtl":Z
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 256
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 258
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mOrderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mReorderedIndices:[I

    .line 267
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for the flex direction is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureVertical(II)V

    .line 275
    goto :goto_0

    .line 270
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->measureHorizontal(II)V

    .line 271
    nop

    .line 280
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I
    .param p4, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 1262
    invoke-direct {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget v0, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1265
    iget v0, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 1267
    :cond_0
    iget v0, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1268
    iget v0, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 1271
    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V
    .locals 2
    .param p1, "flexLine"    # Lcom/google/android/flexbox/FlexLine;

    .line 1236
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1238
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1239
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    goto :goto_0

    .line 1242
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 1243
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 1244
    iget v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 1247
    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 1318
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 1331
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1332
    return-void

    .line 1334
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 1335
    if-eqz p1, :cond_1

    .line 1336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    goto :goto_0

    .line 1338
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerHorizontalHeight:I

    .line 1340
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1341
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1342
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 1353
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1354
    return-void

    .line 1356
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 1357
    if-eqz p1, :cond_1

    .line 1358
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    goto :goto_0

    .line 1360
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mDividerVerticalWidth:I

    .line 1362
    :goto_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayout;->setWillNotDrawFlag()V

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1364
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 1275
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/flexbox/FlexLine;>;"
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexLines:Ljava/util/List;

    .line 1276
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1
    .param p1, "flexWrap"    # I

    .line 1138
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    if-eq v0, p1, :cond_0

    .line 1139
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mFlexWrap:I

    .line 1140
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1142
    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0
    .param p1, "dividerMode"    # I

    .line 1387
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerVertical(I)V

    .line 1388
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 1389
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 1415
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 1416
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerHorizontal:I

    .line 1417
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1419
    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 1400
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 1401
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayout;->mShowDividerVertical:I

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayout;->requestLayout()V

    .line 1404
    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 1286
    return-void
.end method
