.class public Lcom/android/keyguard/KeyguardSliceView$Row;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private mDarkAmount:F

.field private final mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 407
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 411
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 419
    new-instance v0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;

    .line 420
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 424
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 425
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 427
    const-string v3, "left"

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 428
    .local v3, "left":Landroid/animation/PropertyValuesHolder;
    const-string v5, "right"

    new-array v6, v4, [I

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 429
    .local v5, "right":Landroid/animation/PropertyValuesHolder;
    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object v5, v6, v8

    const/4 v9, 0x0

    invoke-static {v9, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 431
    .local v6, "changeAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 432
    invoke-virtual {v0, v8, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 433
    sget-object v10, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7, v10}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 435
    sget-object v10, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8, v10}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 437
    invoke-virtual {v0, v7, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 438
    invoke-virtual {v0, v8, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 440
    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v9, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 441
    .local v1, "appearAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v4, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 442
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 444
    const-string v2, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v9, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 445
    .local v2, "disappearAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 446
    const-wide/16 v9, 0x89

    invoke-virtual {v0, v8, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 447
    invoke-virtual {v0, v8, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 449
    invoke-virtual {v0, v7}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 451
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 455
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 456
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildCount()I

    move-result v1

    .line 457
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 458
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 459
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    if-eqz v4, :cond_0

    .line 460
    move-object v4, v3

    check-cast v4, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    div-int v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setMaxWidth(I)V

    .line 457
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v2    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 464
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 5
    .param p1, "darkAmount"    # F

    .line 467
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 468
    .local v1, "isAwake":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .line 469
    .local v0, "wasAwake":Z
    if-ne v1, v0, :cond_2

    .line 470
    return-void

    .line 472
    :cond_2
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    .line 473
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Landroid/view/animation/Animation$AnimationListener;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 474
    return-void
.end method
