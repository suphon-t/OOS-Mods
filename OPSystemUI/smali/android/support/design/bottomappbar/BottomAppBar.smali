.class public Landroid/support/design/bottomappbar/BottomAppBar;
.super Landroid/support/v7/widget/Toolbar;
.source "BottomAppBar.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/bottomappbar/BottomAppBar$SavedState;,
        Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# instance fields
.field private attachAnimator:Landroid/animation/Animator;

.field private fabAlignmentMode:I

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field private final materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private menuAnimator:Landroid/animation/Animator;

.field private modeAnimator:Landroid/animation/Animator;

.field private final topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    sget v0, Landroid/support/design/bottomappbar/R$attr;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    sget-object v0, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar:[I

    sget v1, Landroid/support/design/bottomappbar/R$style;->Widget_MaterialComponents_BottomAppBar:I

    .line 108
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_backgroundTint:I

    .line 116
    invoke-static {p1, v0, v1}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 118
    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    sget v2, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_fabCradleDiameter:I

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    .line 120
    .local v2, "fabCradleDiameter":F
    sget v4, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 121
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 122
    .local v4, "fabCornerRadius":F
    sget v5, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    .line 123
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    .line 124
    .local v5, "fabVerticalOffset":F
    sget v6, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_fabAttached:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 125
    sget v6, Landroid/support/design/bottomappbar/R$styleable;->BottomAppBar_fabAlignmentMode:I

    .line 126
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    nop

    .line 131
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Landroid/support/design/bottomappbar/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 133
    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {v3, v2, v4, v5}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    iput-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    .line 135
    new-instance v3, Landroid/support/design/shape/ShapePathModel;

    invoke-direct {v3}, Landroid/support/design/shape/ShapePathModel;-><init>()V

    .line 136
    .local v3, "appBarModel":Landroid/support/design/shape/ShapePathModel;
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v3, v6}, Landroid/support/design/shape/ShapePathModel;->setTopEdge(Landroid/support/design/shape/EdgeTreatment;)V

    .line 137
    new-instance v6, Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-direct {v6, v3}, Landroid/support/design/shape/MaterialShapeDrawable;-><init>(Landroid/support/design/shape/ShapePathModel;)V

    iput-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    .line 138
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Landroid/support/design/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 139
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v6, v7}, Landroid/support/design/shape/MaterialShapeDrawable;->setShadowEnabled(Z)V

    .line 140
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/support/design/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {v6, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->attachAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 460
    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 463
    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 466
    :cond_2
    return-void
.end method

.method private findDependentFab()Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .line 257
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 259
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 260
    move-object v1, v2

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    return-object v1

    .line 262
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActionMenuView()Landroid/support/v7/widget/ActionMenuView;
    .locals 3

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 414
    move-object v2, v1

    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    return-object v2

    .line 411
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 406
    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationX(I)I
    .locals 4
    .param p1, "fabAlignmentMode"    # I

    .line 399
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 400
    .local v0, "isRtl":Z
    :goto_0
    if-ne p1, v2, :cond_2

    .line 401
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    sub-int/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    nop

    :cond_1
    mul-int/2addr v1, v2

    nop

    .line 400
    :cond_2
    return v1
.end method

.method private translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 8
    .param p1, "actionMenuView"    # Landroid/support/v7/widget/ActionMenuView;
    .param p2, "fabAlignmentMode"    # I
    .param p3, "fabAttached"    # Z

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "toolbarLeftContentEnd":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 437
    .local v1, "isRtl":Z
    :goto_0
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "toolbarLeftContentEnd":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 438
    invoke-virtual {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 439
    .local v5, "view":Landroid/view/View;
    nop

    .line 440
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_1

    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v6, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v2

    .line 444
    .local v6, "isAlignedToStart":Z
    :goto_2
    if-eqz v6, :cond_3

    .line 445
    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    :goto_3
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 437
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "isAlignedToStart":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getRight()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getLeft()I

    move-result v0

    .line 451
    .local v0, "end":I
    :goto_4
    sub-int v2, v4, v0

    .line 452
    .local v2, "offset":I
    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_6

    int-to-float v3, v2

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/ActionMenuView;->setTranslationX(F)V

    .line 454
    return-void
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    move-result v0

    return v0
.end method

.method public isFabAttached()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 470
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    .line 473
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->cancelAnimations()V

    .line 476
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->topEdgeTreatment:Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    .line 477
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    iget-boolean v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 478
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    .line 479
    .local v0, "actionMenuView":Landroid/support/v7/widget/ActionMenuView;
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->setAlpha(F)V

    .line 481
    iget v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iget-boolean v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    invoke-direct {p0, v0, v1, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->translateActionMenuView(Landroid/support/v7/widget/ActionMenuView;IZ)V

    .line 483
    :cond_1
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->findDependentFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    .line 484
    .local v1, "fab":Landroid/support/design/widget/FloatingActionButton;
    if-eqz v1, :cond_3

    .line 485
    nop

    .line 486
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->isFabAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v3

    add-float/2addr v2, v3

    .line 485
    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    .line 487
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    .line 489
    :cond_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 552
    instance-of v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 553
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 554
    return-void

    .line 556
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    .line 557
    .local v0, "savedState":Landroid/support/design/bottomappbar/BottomAppBar$SavedState;
    invoke-virtual {v0}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 558
    iget v1, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    iput v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    .line 559
    iget-boolean v1, v0, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    iput-boolean v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    .line 560
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 543
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 544
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 545
    .local v1, "savedState":Landroid/support/design/bottomappbar/BottomAppBar$SavedState;
    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    iput v2, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    .line 546
    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->fabAttached:Z

    iput-boolean v2, v1, Landroid/support/design/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    .line 547
    return-object v1
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 499
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 494
    return-void
.end method
