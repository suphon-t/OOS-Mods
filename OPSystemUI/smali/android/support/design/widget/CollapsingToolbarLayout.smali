.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# instance fields
.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarDirectChild:Landroid/view/View;

.field private toolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 153
    new-instance v2, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v2, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 154
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v3, Landroid/support/design/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    sget-object v2, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout:[I

    sget v3, Landroid/support/design/widget/R$style;->Widget_Design_CollapsingToolbar:I

    .line 157
    invoke-static {p1, p2, v2, p3, v3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 164
    .local v2, "a":Landroid/content/res/TypedArray;
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v4, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    .line 165
    const v5, 0x800053

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 164
    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 168
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v4, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    .line 169
    const v5, 0x800013

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 168
    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 173
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 180
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    .line 182
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 184
    :cond_0
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    .line 186
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 188
    :cond_1
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    .line 190
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 192
    :cond_2
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 197
    :cond_3
    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 198
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v3, Landroid/support/design/widget/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v3, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 207
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 209
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 208
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 211
    :cond_4
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v3, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    .line 213
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 212
    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 216
    :cond_5
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    .line 217
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 219
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v3, 0x258

    .line 220
    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 224
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 225
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 227
    sget v0, Landroid/support/design/widget/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    .line 229
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 233
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 241
    return-void
.end method

.method private animateScrim(I)V
    .locals 4
    .param p1, "targetAlpha"    # I

    .line 603
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 604
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 607
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 618
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 622
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 623
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 624
    return-void
.end method

.method private ensureToolbar()V
    .locals 5

    .line 344
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 350
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 352
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 354
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarId:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 355
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 360
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_4

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 365
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 366
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_2

    .line 367
    move-object v0, v3

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 368
    goto :goto_1

    .line 364
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    :goto_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 374
    .end local v0    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 376
    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;

    .line 386
    move-object v0, p1

    .line 387
    .local v0, "directChild":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    if-eqz v1, :cond_1

    .line 388
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 389
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 387
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 392
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_1
    return-object v0
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 504
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 505
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 506
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    return v2

    .line 508
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 512
    sget v0, Landroid/support/design/widget/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ViewOffsetHelper;

    .line 513
    .local v0, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Landroid/support/design/widget/ViewOffsetHelper;

    invoke-direct {v1, p0}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 515
    sget v1, Landroid/support/design/widget/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 517
    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_2

    :goto_1
    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private updateDummyView()V
    .locals 3

    .line 396
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 399
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 400
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 407
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 411
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1094
    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 295
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 299
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 302
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 311
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v0, :cond_3

    .line 312
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 313
    .local v0, "topInset":I
    :goto_0
    if-lez v0, :cond_3

    .line 314
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    .end local v0    # "topInset":I
    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "invalidated":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 329
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    const/4 v0, 0x1

    .line 332
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 728
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 730
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    .line 731
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 733
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 734
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 735
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 737
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 738
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 741
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v3, :cond_2

    .line 742
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 745
    :cond_2
    if-eqz v1, :cond_3

    .line 746
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    .line 748
    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .line 1099
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1104
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1109
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1228
    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v0

    .line 1229
    .local v0, "offsetHelper":Landroid/support/design/widget/ViewOffsetHelper;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1230
    .local v1, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 4

    .line 1058
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    .line 1060
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    return v0

    .line 1064
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1066
    .local v0, "insetTop":I
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 1067
    .local v1, "minHeight":I
    if-lez v1, :cond_2

    .line 1069
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 1074
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 248
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 249
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 251
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 253
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 256
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 259
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 261
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 267
    .local v0, "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 268
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->onOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 272
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 431
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 433
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 436
    .local v0, "insetTop":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 437
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 438
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 439
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 442
    invoke-static {v3, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 436
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "insetTop":I
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 452
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 453
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 455
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_9

    .line 456
    nop

    .line 457
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    .line 460
    .local v0, "isRtl":Z
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 461
    :goto_2
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v1

    .line 462
    .local v1, "maxOffset":I
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 463
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 464
    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v4

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 465
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 466
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_4

    :cond_6
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 467
    invoke-virtual {v7}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 463
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 470
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_7

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    goto :goto_5

    :cond_7
    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    :goto_5
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginTop:I

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-eqz v0, :cond_8

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginStart:I

    goto :goto_6

    :cond_8
    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginEnd:I

    :goto_6
    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->expandedMarginBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 476
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 482
    .end local v0    # "isRtl":Z
    .end local v1    # "maxOffset":I
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_7
    if-ge v0, v1, :cond_a

    .line 483
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 487
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_e

    .line 488
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 490
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    if-ne v0, p0, :cond_c

    goto :goto_8

    .line 495
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_9

    .line 493
    :cond_d
    :goto_8
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 499
    :cond_e
    :goto_9
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 500
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 415
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 416
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 418
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 419
    .local v0, "mode":I
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 420
    .local v1, "topInset":I
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 423
    nop

    .line 424
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 425
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 427
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 338
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    move-object v0, p1

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 285
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 650
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 651
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 654
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 655
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 657
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 658
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 660
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 662
    :cond_3
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 627
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 629
    .local v0, "contentScrim":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 632
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    .line 633
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 635
    .end local v0    # "contentScrim":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .line 579
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 580
    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .line 592
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    .line 593
    const/4 v0, 0x0

    const/16 v1, 0xff

    if-eqz p2, :cond_1

    .line 594
    if-eqz p1, :cond_0

    move v0, v1

    nop

    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_0

    .line 596
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 598
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 600
    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 708
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 709
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 712
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 717
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 718
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 719
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 720
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 722
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 724
    :cond_5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 757
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 759
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 760
    .local v1, "visible":Z
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 761
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 763
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 764
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 766
    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1222
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 1225
    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 752
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

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
