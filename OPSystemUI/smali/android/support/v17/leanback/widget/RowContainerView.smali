.class final Landroid/support/v17/leanback/widget/RowContainerView;
.super Landroid/widget/LinearLayout;
.source "RowContainerView.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundBoundsChanged:Z

.field private mHeaderDock:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    .line 48
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowContainerView;->setOrientation(I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_row_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v1, Landroid/support/v17/leanback/R$id;->lb_row_container_header_dock:I

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mHeaderDock:Landroid/view/ViewGroup;

    .line 53
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 107
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    .line 109
    iget-object v1, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowContainerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowContainerView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    :cond_1
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForegroundBoundsChanged:Z

    .line 101
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowContainerView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowContainerView;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowContainerView;->invalidate()V

    .line 81
    return-void
.end method
