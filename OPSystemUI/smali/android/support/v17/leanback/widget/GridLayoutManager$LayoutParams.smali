.class final Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LayoutParams"
.end annotation


# instance fields
.field private mAlignMultiple:[I

.field private mAlignX:I

.field private mAlignY:I

.field private mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

.field mBottomInset:I

.field mLeftInset:I

.field mRightInset:I

.field mTopInset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 96
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 89
    return-void
.end method


# virtual methods
.method calculateItemAlignments(ILandroid/view/View;)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 169
    .local v0, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    array-length v1, v1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 170
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    .line 172
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 173
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget-object v4, v0, v2

    .line 174
    invoke-static {p2, v4, p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I

    move-result v4

    aput v4, v3, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_2
    if-nez p1, :cond_3

    .line 177
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v1, v2, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    goto :goto_1

    .line 179
    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    aget v1, v2, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    .line 181
    :goto_1
    return-void
.end method

.method getAlignMultiple()[I
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignMultiple:[I

    return-object v0
.end method

.method getAlignX()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    return v0
.end method

.method getAlignY()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    return v0
.end method

.method getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-object v0
.end method

.method getOpticalHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalLeftInset()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    return v0
.end method

.method getOpticalRight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getOpticalRightInset()I
    .locals 1

    .line 140
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    return v0
.end method

.method getOpticalTop(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getOpticalTopInset()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    return v0
.end method

.method getOpticalWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method setAlignX(I)V
    .locals 0
    .param p1, "alignX"    # I

    .line 152
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignX:I

    .line 153
    return-void
.end method

.method setAlignY(I)V
    .locals 0
    .param p1, "alignY"    # I

    .line 156
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignY:I

    .line 157
    return-void
.end method

.method setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V
    .locals 0
    .param p1, "facet"    # Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 160
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mAlignmentFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 161
    return-void
.end method

.method setOpticalInsets(IIII)V
    .locals 0
    .param p1, "leftInset"    # I
    .param p2, "topInset"    # I
    .param p3, "rightInset"    # I
    .param p4, "bottomInset"    # I

    .line 188
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    .line 189
    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    .line 190
    iput p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    .line 191
    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    .line 192
    return-void
.end method
