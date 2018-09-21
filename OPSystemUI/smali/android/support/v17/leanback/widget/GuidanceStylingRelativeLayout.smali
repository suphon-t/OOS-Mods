.class Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidanceStylingRelativeLayout.java"


# instance fields
.field private mTitleKeylinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    .line 34
    return-void
.end method

.method public static getKeyLinePercent(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 40
    .local v1, "percent":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 48
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "mTitleView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "mBreadcrumbView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "mDescriptionView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 53
    .local v3, "mIconView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 55
    .local v4, "mTitleKeylinePixels":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 57
    .local v5, "titleViewBaseline":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 58
    .local v6, "mBreadcrumbViewHeight":I
    sub-int v7, v4, v5

    sub-int/2addr v7, v6

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 60
    .local v7, "guidanceTextContainerTop":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    .line 62
    .local v8, "offset":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_0

    .line 63
    invoke-virtual {v1, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 66
    :cond_0
    invoke-virtual {v0, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 68
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_1

    .line 69
    invoke-virtual {v2, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 73
    .end local v5    # "titleViewBaseline":I
    .end local v6    # "mBreadcrumbViewHeight":I
    .end local v7    # "guidanceTextContainerTop":I
    .end local v8    # "offset":I
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_2

    .line 74
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 75
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 76
    nop

    .line 77
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    .line 76
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 80
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method
