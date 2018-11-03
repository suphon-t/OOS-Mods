.class Landroid/support/v17/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;
.source "ResizingTextView.java"


# instance fields
.field private mDefaultLineSpacingExtra:F

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mDefaultTextSize:I

.field private mDefaultsInitialized:Z

.field private mIsResized:Z

.field private mMaintainLineSpacing:Z

.field private mResizedPaddingAdjustmentBottom:I

.field private mResizedPaddingAdjustmentTop:I

.field private mResizedTextSize:I

.field private mTriggerConditions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 48
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 56
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 60
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizeTrigger:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    .line 62
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedTextSize:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    .line 64
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_maintainLineSpacing:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    .line 66
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    .line 68
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    nop

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private setPaddingTopAndBottom(II)V
    .locals 2
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 270
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPadding(IIII)V

    .line 275
    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 198
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    .line 200
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    .line 201
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    .line 203
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    .line 208
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 209
    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 210
    iget v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v0, v3}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 212
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "resizeText":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 217
    .local v3, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    .line 218
    iget v4, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    and-int/2addr v4, v1

    if-lez v4, :cond_2

    .line 219
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 220
    .local v4, "lineCount":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getMaxLines()I

    move-result v5

    .line 221
    .local v5, "maxLines":I
    if-le v5, v1, :cond_2

    .line 222
    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 227
    .end local v4    # "lineCount":I
    .end local v5    # "maxLines":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    .line 228
    .local v1, "currentSizePx":I
    const/4 v4, 0x0

    .line 229
    .local v4, "remeasure":Z
    const/4 v5, -0x1

    if-eqz v0, :cond_7

    .line 230
    iget v6, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v6, v5, :cond_3

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v1, v5, :cond_3

    .line 231
    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 232
    const/4 v4, 0x1

    .line 235
    :cond_3
    iget v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 237
    .local v2, "targetLineSpacingExtra":F
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_4

    .line 238
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 239
    const/4 v4, 0x1

    .line 241
    :cond_4
    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v6, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    add-int/2addr v5, v6

    .line 242
    .local v5, "paddingTop":I
    iget v6, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    iget v7, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I

    add-int/2addr v6, v7

    .line 243
    .local v6, "paddingBottom":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v7

    if-eq v7, v6, :cond_6

    .line 244
    :cond_5
    invoke-direct {p0, v5, v6}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 245
    const/4 v4, 0x1

    .line 247
    .end local v2    # "targetLineSpacingExtra":F
    .end local v5    # "paddingTop":I
    .end local v6    # "paddingBottom":I
    :cond_6
    goto :goto_1

    .line 249
    :cond_7
    iget v6, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v6, v5, :cond_8

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    if-eq v1, v5, :cond_8

    .line 250
    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    .line 251
    const/4 v4, 0x1

    .line 253
    :cond_8
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v2

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_9

    .line 254
    iget v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    .line 255
    const/4 v2, 0x1

    .line 257
    .end local v4    # "remeasure":Z
    .local v2, "remeasure":Z
    move v4, v2

    .end local v2    # "remeasure":Z
    .restart local v4    # "remeasure":Z
    :cond_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v2

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    if-ne v2, v5, :cond_a

    .line 258
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v2

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    if-eq v2, v5, :cond_b

    .line 259
    :cond_a
    iget v2, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v5, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v2, v5}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    .line 260
    const/4 v4, 0x1

    .line 263
    :cond_b
    :goto_1
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    .line 264
    if-eqz v4, :cond_c

    .line 265
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 267
    :cond_c
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .line 283
    nop

    .line 284
    invoke-static {p0, p1}, Landroid/support/v4/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 283
    invoke-super {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 285
    return-void
.end method
