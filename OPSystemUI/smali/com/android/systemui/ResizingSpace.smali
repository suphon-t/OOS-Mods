.class public Lcom/android/systemui/ResizingSpace;
.super Landroid/view/View;
.source "ResizingSpace.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/ResizingSpace;->setVisibility(I)V

    .line 35
    :cond_0
    sget-object v0, Landroid/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    .line 38
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .line 79
    move v0, p0

    .line 80
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 81
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 83
    .local v2, "specSize":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    move v0, v2

    goto :goto_0

    .line 85
    :cond_1
    move v0, p0

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    nop

    .line 94
    :goto_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 71
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 45
    .local v1, "changed":Z
    iget v2, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    if-lez v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ResizingSpace;->mWidth:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 47
    .local v2, "width":I
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    .line 48
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    const/4 v1, 0x1

    .line 52
    .end local v2    # "width":I
    :cond_0
    iget v2, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    if-lez v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ResizingSpace;->mHeight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 54
    .local v2, "height":I
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v3, :cond_1

    .line 55
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    const/4 v1, 0x1

    .line 59
    .end local v2    # "height":I
    :cond_1
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/ResizingSpace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/systemui/ResizingSpace;->getDefaultSize2(II)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/ResizingSpace;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/systemui/ResizingSpace;->getDefaultSize2(II)I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ResizingSpace;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method
