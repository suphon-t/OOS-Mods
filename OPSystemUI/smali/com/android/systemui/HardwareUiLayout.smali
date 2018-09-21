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

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    .line 415
    new-instance v0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 66
    return-void
.end method

.method private animateChild(II)V
    .locals 0
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .line 320
    return-void
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 408
    instance-of v0, p0, Lcom/android/systemui/HardwareUiLayout;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/HardwareUiLayout;

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEdgePadding()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$5(Lcom/android/systemui/HardwareUiLayout;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 416
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 423
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 423
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 425
    return-void

    .line 417
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 419
    return-void
.end method

.method public static synthetic lambda$onLayout$2(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    .line 316
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

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public static synthetic lambda$onMeasure$1(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    .line 140
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

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method private rotate(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 162
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 165
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 166
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft()V

    goto :goto_1

    .line 169
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight()V

    .line 173
    :goto_1
    if-eqz p2, :cond_4

    .line 174
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 175
    iput-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 176
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v2, v1}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 178
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 182
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    goto :goto_2

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 186
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v2, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 188
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz v2, :cond_5

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 194
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6
    :goto_2
    return-void
.end method

.method private rotateGravityLeft(I)I
    .locals 9
    .param p1, "gravity"    # I

    .line 259
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 260
    const p1, 0x800033

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 264
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 265
    .local v2, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 267
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v2, 0x7

    const/16 v5, 0x10

    const/16 v6, 0x50

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    .line 276
    or-int/2addr v0, v6

    goto :goto_0

    .line 272
    :cond_1
    or-int/lit8 v0, v0, 0x30

    .line 273
    goto :goto_0

    .line 269
    :cond_2
    or-int/2addr v0, v5

    .line 270
    nop

    .line 280
    :goto_0
    if-eq v3, v5, :cond_4

    if-eq v3, v6, :cond_3

    .line 289
    or-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 285
    :cond_3
    or-int/2addr v0, v7

    .line 286
    goto :goto_1

    .line 282
    :cond_4
    or-int/2addr v0, v8

    .line 283
    nop

    .line 292
    :goto_1
    return v0
.end method

.method private rotateGravityRight(I)I
    .locals 9
    .param p1, "gravity"    # I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 217
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 218
    .local v2, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 220
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v2, 0x7

    const/16 v5, 0x10

    const/16 v6, 0x50

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    if-eq v4, v7, :cond_0

    .line 229
    or-int/lit8 v0, v0, 0x30

    goto :goto_0

    .line 225
    :cond_0
    or-int/2addr v0, v6

    .line 226
    goto :goto_0

    .line 222
    :cond_1
    or-int/2addr v0, v5

    .line 223
    nop

    .line 233
    :goto_0
    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_2

    .line 242
    or-int/2addr v0, v7

    goto :goto_1

    .line 238
    :cond_2
    or-int/lit8 v0, v0, 0x3

    .line 239
    goto :goto_1

    .line 235
    :cond_3
    or-int/2addr v0, v8

    .line 236
    nop

    .line 245
    :goto_1
    return v0
.end method

.method private rotateLeft()V
    .locals 2

    .line 249
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 251
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-void
.end method

.method private rotateLeft(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 296
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 299
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method private rotateRight()V
    .locals 2

    .line 197
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 199
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method private rotateRight(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 305
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 308
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void
.end method

.method private setCutPoint(I)V
    .locals 6
    .param p1, "point"    # I

    .line 369
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareBgDrawable;->getCutPoint()I

    move-result v0

    .line 370
    .local v0, "curPoint":I
    if-ne v0, p1, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 376
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    if-ne v1, p1, :cond_2

    .line 377
    return-void

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 381
    :cond_3
    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    .line 382
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

    .line 383
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 385
    iput-boolean v4, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    .line 387
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 388
    return-void

    .line 372
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/HardwareBgDrawable;->setCutPoint(I)V

    .line 373
    return-void
.end method

.method private swapDimens(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 208
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    .local v1, "h":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method private updateEdgeMargin(I)V
    .locals 3
    .param p1, "edge"    # I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 105
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 106
    :cond_0
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 107
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 109
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void
.end method

.method private updatePosition()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    xor-int/lit8 v0, v0, 0x1

    .line 356
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 357
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 359
    .local v1, "trans":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v2, v2, v0

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 360
    .local v2, "viewTop":I
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 361
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    .line 362
    invoke-direct {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    .line 363
    .end local v0    # "index":I
    .end local v1    # "trans":F
    .end local v2    # "viewTop":I
    goto :goto_1

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    .line 366
    :goto_1
    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 155
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 156
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 157
    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 159
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_hwui_edge_bleed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sysui_hwui_rounded_divider"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v2

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 94
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 99
    :cond_3
    return-void
.end method


# virtual methods
.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 392
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 72
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_hwui_edge_bleed"

    const-string v2, "sysui_hwui_rounded_divider"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 74
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 80
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 81
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 316
    new-instance v0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    goto :goto_1

    .line 133
    :cond_1
    return-void

    .line 136
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 137
    .local v0, "newHeight":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    if-eq v0, v1, :cond_3

    .line 138
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V

    .line 140
    :cond_3
    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 86
    return-void
.end method

.method public setDivisionView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 343
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$2j9eMBfPQJX3xgwLvM_hUGNd8jc;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$2j9eMBfPQJX3xgwLvM_hUGNd8jc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    .line 350
    return-void
.end method

.method public setOutsideTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setClickable(Z)V

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setFocusable(Z)V

    .line 401
    return-void
.end method
