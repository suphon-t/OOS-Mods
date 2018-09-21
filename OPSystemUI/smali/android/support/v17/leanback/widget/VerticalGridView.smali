.class public Landroid/support/v17/leanback/widget/VerticalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "VerticalGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(Landroid/content/res/TypedArray;)V

    .line 61
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_numberOfColumns:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 89
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    .line 90
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    .line 91
    return-void
.end method

.method setColumnWidth(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .line 66
    sget v0, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_columnWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 67
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 68
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbVerticalGridView_columnWidth:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 69
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setColumnWidth(I)V

    .line 71
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestLayout()V

    .line 79
    return-void
.end method
