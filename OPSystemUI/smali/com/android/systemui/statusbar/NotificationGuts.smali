.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/FrameLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

.field private mHandler:Landroid/os/Handler;

.field private mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

.field private mNeedsFalsingProtection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    .line 127
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method private animateOpen(ZIILjava/lang/Runnable;)V
    .locals 9
    .param p1, "shouldDoCircularReveal"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "onAnimationEnd"    # Ljava/lang/Runnable;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 266
    .local v2, "horz":D
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 267
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 269
    .local v6, "r":F
    invoke-static {p0, p2, p3, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 270
    .local v1, "a":Landroid/animation/Animator;
    const-wide/16 v7, 0x168

    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 271
    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    new-instance v7, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;

    invoke-direct {v7, p4, v0}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/NotificationGuts$1;)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 274
    .end local v1    # "a":Landroid/animation/Animator;
    .end local v2    # "horz":D
    .end local v4    # "vert":D
    .end local v6    # "r":F
    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setAlpha(F)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xf0

    .line 279
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 280
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;

    invoke-direct {v2, p4, v0}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateOpenListener;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/NotificationGuts$1;)V

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "NotificationGuts"

    const-string v1, "Failed to animate guts open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 160
    .local v0, "top":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    .line 161
    .local v1, "bottom":I
    if-eqz p2, :cond_0

    if-ge v0, v1, :cond_0

    .line 162
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v3

    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    :cond_0
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method animateClose(IIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "shouldDoCircularReveal"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 296
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 p1, v2, 0x2

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int p2, v2, v3

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 301
    .local v2, "horz":D
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 302
    .local v4, "vert":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 303
    .local v6, "r":F
    invoke-static {p0, p1, p2, v6, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 305
    .local v1, "a":Landroid/animation/Animator;
    const-wide/16 v7, 0x168

    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 306
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    new-instance v7, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationGuts$1;)V

    invoke-virtual {v1, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 309
    .end local v1    # "a":Landroid/animation/Animator;
    .end local v2    # "horz":D
    .end local v4    # "vert":D
    .end local v6    # "r":F
    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 312
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xf0

    .line 313
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 314
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts$AnimateCloseListener;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/NotificationGuts$1;)V

    .line 315
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 319
    :cond_3
    const-string v0, "NotificationGuts"

    const-string v1, "Failed to animate guts close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void
.end method

.method public closeControls(IIZZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "save"    # Z
    .param p4, "force"    # Z

    .line 236
    const-class v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 237
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    .line 238
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->dismissCurrentBlockingHelper()Z

    move-result v0

    .line 240
    .local v0, "wasBlockingHelperDismissed":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 244
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .line 248
    invoke-interface {v1, p3, p4}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->handleCloseControls(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 251
    :cond_2
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->animateClose(IIZ)V

    .line 253
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 258
    :cond_3
    return-void
.end method

.method public closeControls(ZZIIZ)V
    .locals 1
    .param p1, "leavebehinds"    # Z
    .param p2, "controls"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "force"    # Z

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .line 220
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->shouldBeSaved()Z

    move-result v0

    invoke-virtual {p0, p3, p4, v0, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 224
    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 197
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method public getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getActualHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public isExposed()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method public isLeavebehind()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x7f080481

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onHeightChanged()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 364
    :cond_0
    return-void
.end method

.method public openControls(ZIIZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "shouldDoCircularReveal"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "needsFalsingProtection"    # Z
    .param p5, "onAnimationEnd"    # Ljava/lang/Runnable;

    .line 205
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->animateOpen(ZIILjava/lang/Runnable;)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    .line 207
    return-void
.end method

.method public resetFalsingCheck()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .line 324
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 326
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .line 342
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 344
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .line 337
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    .line 339
    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .line 353
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    .line 354
    return-void
.end method

.method setExposed(ZZ)V
    .locals 3
    .param p1, "exposed"    # Z
    .param p2, "needsFalsingProtection"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 368
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 369
    .local v0, "wasExposed":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    .line 370
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 371
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, "contentView":Landroid/view/View;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 379
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 383
    .end local v1    # "contentView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V
    .locals 1
    .param p1, "content"    # Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->removeAllViews()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->addView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    .line 358
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->willBeRemoved()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
