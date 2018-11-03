.class public Lcom/android/systemui/HardwareUiLayout;
.super Landroid/widget/FrameLayout;
.source "HardwareUiLayout.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mChild:Landroid/view/View;

.field private mCollapse:Z

.field private mDivision:Landroid/view/View;

.field private mEdgeBleed:Z

.field private mEndPoint:I

.field private mHasOutsideTouch:Z

.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOldHeight:I

.field private mRotatedBackground:Z

.field private mRotation:I

.field private mRoundedDivider:Z

.field private mSwapOrientation:Z

.field private final mTmp2:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    .line 423
    new-instance v0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 67
    return-void
.end method

.method private animateChild(II)V
    .locals 0
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .line 328
    return-void
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 416
    instance-of v0, p0, Lcom/android/systemui/HardwareUiLayout;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/HardwareUiLayout;

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEdgePadding()I
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$5(Lcom/android/systemui/HardwareUiLayout;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 431
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 431
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    return-void

    .line 425
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 427
    return-void
.end method

.method public static synthetic lambda$onLayout$2(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public static synthetic lambda$onMeasure$0(Lcom/android/systemui/HardwareUiLayout;Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public static synthetic lambda$onMeasure$1(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public static synthetic lambda$setDivisionView$4(Lcom/android/systemui/HardwareUiLayout;Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method private rotate(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 170
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 173
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 174
    return-void

    .line 176
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft()V

    goto :goto_1

    .line 177
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight()V

    .line 181
    :goto_1
    if-eqz p2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 184
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 186
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 190
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    goto :goto_2

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 194
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v2, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 196
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 202
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6
    :goto_2
    return-void
.end method

.method private rotateGravityLeft(I)I
    .locals 9
    .param p1, "gravity"    # I

    .line 267
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 268
    const p1, 0x800033

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 272
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 273
    .local v2, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 275
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v2, 0x7

    const/16 v5, 0x10

    const/16 v6, 0x50

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    .line 284
    or-int/2addr v0, v6

    goto :goto_0

    .line 280
    :cond_1
    or-int/lit8 v0, v0, 0x30

    .line 281
    goto :goto_0

    .line 277
    :cond_2
    or-int/2addr v0, v5

    .line 278
    nop

    .line 288
    :goto_0
    if-eq v3, v5, :cond_4

    if-eq v3, v6, :cond_3

    .line 297
    or-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 293
    :cond_3
    or-int/2addr v0, v7

    .line 294
    goto :goto_1

    .line 290
    :cond_4
    or-int/2addr v0, v8

    .line 291
    nop

    .line 300
    :goto_1
    return v0
.end method

.method private rotateGravityRight(I)I
    .locals 9
    .param p1, "gravity"    # I

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 225
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 226
    .local v2, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 228
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v2, 0x7

    const/16 v5, 0x10

    const/16 v6, 0x50

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    if-eq v4, v7, :cond_0

    .line 237
    or-int/lit8 v0, v0, 0x30

    goto :goto_0

    .line 233
    :cond_0
    or-int/2addr v0, v6

    .line 234
    goto :goto_0

    .line 230
    :cond_1
    or-int/2addr v0, v5

    .line 231
    nop

    .line 241
    :goto_0
    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_2

    .line 250
    or-int/2addr v0, v7

    goto :goto_1

    .line 246
    :cond_2
    or-int/lit8 v0, v0, 0x3

    .line 247
    goto :goto_1

    .line 243
    :cond_3
    or-int/2addr v0, v8

    .line 244
    nop

    .line 253
    :goto_1
    return v0
.end method

.method private rotateLeft()V
    .locals 2

    .line 257
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 259
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method

.method private rotateLeft(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 304
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 307
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method private rotateRight()V
    .locals 2

    .line 205
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 207
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 211
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method private rotateRight(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 313
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 316
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    return-void
.end method

.method private setCutPoint(I)V
    .locals 6
    .param p1, "point"    # I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareBgDrawable;->getCutPoint()I

    move-result v0

    .line 378
    .local v0, "curPoint":I
    if-ne v0, p1, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 384
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    if-ne v1, p1, :cond_2

    .line 385
    return-void

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 389
    :cond_3
    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    .line 390
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    const-string v2, "cutPoint"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput p1, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    .line 391
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    if-eqz v1, :cond_4

    .line 392
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 393
    iput-boolean v4, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    .line 395
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 396
    return-void

    .line 380
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/HardwareBgDrawable;->setCutPoint(I)V

    .line 381
    return-void
.end method

.method private swapDimens(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 216
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    .local v1, "h":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method private updateEdgeMargin(I)V
    .locals 3
    .param p1, "edge"    # I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 113
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 114
    :cond_0
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 115
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 117
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void
.end method

.method private updatePosition()V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    xor-int/lit8 v0, v0, 0x1

    .line 364
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 365
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    goto :goto_0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 367
    .local v1, "trans":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v2, v2, v0

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 368
    .local v2, "viewTop":I
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 369
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    .line 370
    invoke-direct {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    .line 371
    .end local v0    # "index":I
    .end local v1    # "trans":F
    .end local v2    # "viewTop":I
    goto :goto_1

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    .line 374
    :goto_1
    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 163
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 164
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 165
    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 167
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    const v0, 0x7f120542

    goto :goto_0

    .line 93
    :cond_0
    const v0, 0x7f12054a

    .line 94
    .local v0, "theme":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_hwui_edge_bleed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_hwui_rounded_divider"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    .line 101
    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v4

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 102
    new-instance v2, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v4, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 104
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 107
    :cond_4
    return-void
.end method


# virtual methods
.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 400
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 73
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_hwui_edge_bleed"

    const-string/jumbo v2, "sysui_hwui_rounded_divider"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 75
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    .line 155
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 81
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 82
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 323
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 324
    new-instance v0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    goto :goto_1

    .line 141
    :cond_1
    return-void

    .line 144
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 145
    .local v0, "newHeight":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    if-eq v0, v1, :cond_3

    .line 146
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V

    .line 148
    :cond_3
    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 87
    return-void
.end method

.method public setDivisionView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 351
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$2j9eMBfPQJX3xgwLvM_hUGNd8jc;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$2j9eMBfPQJX3xgwLvM_hUGNd8jc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    .line 358
    return-void
.end method

.method public setOutsideTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setClickable(Z)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setFocusable(Z)V

    .line 409
    return-void
.end method
