.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mColor:I

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 235
    new-instance v0, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070563

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070562

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 49
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    .line 52
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/PageIndicator;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/PageIndicator;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/PageIndicator;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 127
    shr-int/lit8 v0, p1, 0x1

    .line 128
    .local v0, "fromIndex":I
    shr-int/lit8 v1, p2, 0x1

    .line 132
    .local v1, "toIndex":I
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 134
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 135
    .local v2, "fromTransition":Z
    :goto_0
    if-eqz v2, :cond_2

    if-le p1, p2, :cond_1

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    if-ge p1, p2, :cond_1

    goto :goto_1

    .line 136
    .local v5, "isAState":Z
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    .local v6, "firstIndex":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 138
    .local v7, "secondIndex":I
    if-ne v7, v6, :cond_3

    .line 139
    add-int/lit8 v7, v7, 0x1

    .line 141
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 142
    .local v8, "first":Landroid/widget/ImageView;
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 143
    .local v9, "second":Landroid/widget/ImageView;
    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v10

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 150
    invoke-direct {p0, v2, v5, v3}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 151
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 153
    invoke-direct {p0, v2, v5, v4}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v3

    invoke-direct {p0, v9, v3}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 154
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 156
    iput-boolean v4, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    .line 157
    return-void

    .line 145
    :cond_5
    :goto_3
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1
    .param p1, "isMajor"    # Z

    .line 160
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method private getTransition(ZZZ)I
    .locals 1
    .param p1, "fromB"    # Z
    .param p2, "isMajorAState"    # Z
    .param p3, "isMajor"    # Z

    .line 174
    if-eqz p3, :cond_3

    .line 175
    if-eqz p1, :cond_1

    .line 176
    if-eqz p2, :cond_0

    .line 177
    const v0, 0x7f080446

    return v0

    .line 179
    :cond_0
    const v0, 0x7f080448

    return v0

    .line 182
    :cond_1
    if-eqz p2, :cond_2

    .line 183
    const v0, 0x7f080444

    return v0

    .line 185
    :cond_2
    const v0, 0x7f08044a

    return v0

    .line 189
    :cond_3
    if-eqz p1, :cond_5

    .line 190
    if-eqz p2, :cond_4

    .line 191
    const v0, 0x7f080450

    return v0

    .line 193
    :cond_4
    const v0, 0x7f08044e

    return v0

    .line 196
    :cond_5
    if-eqz p2, :cond_6

    .line 197
    const v0, 0x7f080452

    return v0

    .line 199
    :cond_6
    const v0, 0x7f08044c

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "res"    # I

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 165
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/PageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method private setIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 112
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 115
    .local v3, "v":Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 116
    const v4, 0x7f080443

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 120
    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 112
    .end local v3    # "v":Landroid/widget/ImageView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    goto :goto_0

    .line 105
    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 107
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 108
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 226
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 230
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v2

    .line 231
    .local v3, "left":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 229
    .end local v3    # "left":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v0

    .line 208
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 210
    return-void

    .line 212
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 214
    .local v1, "widthChildSpec":I
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 216
    .local v2, "heightChildSpec":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 217
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    add-int/2addr v3, v4

    .line 220
    .local v3, "width":I
    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/PageIndicator;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method public setLocation(F)V
    .locals 6
    .param p1, "location"    # F

    .line 79
    float-to-int v0, p1

    .line 80
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 80
    const v3, 0x7f1100de

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    shl-int/lit8 v1, v0, 0x1

    int-to-float v2, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    move v4, v5

    nop

    :cond_0
    or-int/2addr v1, v4

    .line 85
    .local v1, "position":I
    iget v2, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 86
    .local v2, "lastPosition":I
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 89
    :cond_1
    if-ne v1, v2, :cond_2

    return-void

    .line 90
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v3, :cond_3

    .line 92
    iget-object v3, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void

    .line 96
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    .line 97
    return-void
.end method

.method public setNumPages(I)V
    .locals 7
    .param p1, "numPages"    # I

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->setVisibility(I)V

    .line 58
    iget-boolean v2, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 59
    const-string v2, "PageIndicator"

    const-string v3, "setNumPages during animation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PageIndicator;->removeViewAt(I)V

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x101042a

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 67
    .local v0, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PageIndicator;->getChildCount()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 69
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/qs/PageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v3, "v":Landroid/widget/ImageView;
    const v4, 0x7f08044b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 72
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v6, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/PageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .end local v3    # "v":Landroid/widget/ImageView;
    goto :goto_2

    .line 75
    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/lit8 v1, v3, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 76
    return-void
.end method
