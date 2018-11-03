.class public Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "HeadsUpStatusBarView.java"


# instance fields
.field private mAbsoluteStartPadding:I

.field private mCutOutBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCutOutInset:I

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEndMargin:I

.field private mFirstLayout:Z

.field private mIconDrawingRect:Landroid/graphics/Rect;

.field private mIconPlaceholder:Landroid/view/View;

.field private mLayoutedIconRect:Landroid/graphics/Rect;

.field private mMaxWidth:I

.field private mOnDrawingRectChangedListener:Ljava/lang/Runnable;

.field private mPublicMode:Z

.field private mShowingEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mSysWinInset:I

.field private mTextView:Landroid/widget/TextView;

.field private mTmpPosition:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0703c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    const v2, 0x1050130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    const v2, 0x7f0701f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    .line 81
    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPaddingRelative(IIII)V

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconPlaceholder"    # Landroid/view/View;
    .param p3, "textView"    # Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;)V

    .line 116
    iput-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    .line 118
    return-void
.end method

.method private getDisplaySize()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 255
    return-void
.end method

.method private updateDrawingRect()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 194
    .local v0, "oldLeft":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 199
    :cond_0
    return-void
.end method

.method private updateMaxWidth()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    .local v0, "maxWidth":I
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-eq v0, v1, :cond_0

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->requestLayout()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->isLayoutRtl()Z

    move-result v0

    .line 204
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 206
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 207
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    goto :goto_1

    .line 208
    :cond_2
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    .line 212
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    .line 213
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    if-nez v3, :cond_3

    .line 214
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    if-nez v3, :cond_3

    .line 215
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    .line 223
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    if-eqz v3, :cond_4

    .line 224
    iput v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 227
    :cond_4
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method public getIconDrawingRect()Landroid/graphics/Rect;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getShowingEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 259
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onAttachedToWindow()V

    .line 260
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    .line 261
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 109
    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    .line 111
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 123
    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 124
    const v0, 0x7f0a040c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    .line 125
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object v0, p0

    .line 142
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onLayout(ZIIII)V

    .line 143
    iget-object v1, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 144
    iget-object v1, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 145
    .local v1, "left":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 146
    .local v3, "top":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 147
    .local v4, "right":I
    iget-object v5, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 148
    .local v5, "bottom":I
    iget-object v6, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    invoke-direct {v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    .line 150
    iget v6, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget v7, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    add-int/2addr v6, v7

    .line 151
    .local v6, "targetPadding":I
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->isLayoutRtl()Z

    move-result v7

    .line 152
    .local v7, "isRtl":Z
    if-eqz v7, :cond_0

    iget-object v8, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v4

    goto :goto_0

    :cond_0
    move v8, v1

    .line 154
    .local v8, "start":I
    :goto_0
    if-eq v8, v6, :cond_4

    .line 155
    iget-object v9, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 156
    iget-object v9, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 157
    .local v10, "cutOutRect":Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 158
    iget-object v11, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    goto :goto_2

    :cond_1
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 159
    .local v11, "cutOutStart":I
    :goto_2
    if-le v8, v11, :cond_2

    .line 160
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    .line 161
    goto :goto_3

    .line 163
    .end local v10    # "cutOutRect":Landroid/graphics/Rect;
    .end local v11    # "cutOutStart":I
    :cond_2
    goto :goto_1

    .line 166
    :cond_3
    :goto_3
    sub-int v9, v6, v8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getPaddingStart()I

    move-result v10

    add-int/2addr v9, v10

    .line 167
    .local v9, "newPadding":I
    iget v10, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    invoke-virtual {v0, v9, v2, v10, v2}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPaddingRelative(IIII)V

    .line 169
    .end local v9    # "newPadding":I
    :cond_4
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    if-eqz v9, :cond_5

    .line 173
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    .line 174
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    .line 176
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 99
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-lez v0, :cond_0

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    .local v0, "newSize":I
    nop

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 101
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 104
    .end local v0    # "newSize":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 128
    if-eqz p1, :cond_1

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 130
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 131
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 138
    :goto_0
    return-void
.end method

.method public setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDrawingRectChangedListener"    # Ljava/lang/Runnable;

    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    .line 248
    return-void
.end method

.method public setPanelTranslation(F)V
    .locals 1
    .param p1, "translationX"    # F

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setTranslationX(F)V

    goto :goto_0

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setTranslationX(F)V

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    .line 190
    return-void
.end method

.method public setPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    .line 244
    return-void
.end method
