.class Landroidx/car/widget/PagedListView$TopOffsetDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopOffsetDecoration"
.end annotation


# instance fields
.field private mTopOffset:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "topOffset"    # I

    .line 1461
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1462
    iput p1, p0, Landroidx/car/widget/PagedListView$TopOffsetDecoration;->mTopOffset:I

    .line 1463
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/car/widget/PagedListView$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroidx/car/widget/PagedListView$1;

    .line 1458
    invoke-direct {p0, p1}, Landroidx/car/widget/PagedListView$TopOffsetDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 1468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1469
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 1470
    .local v0, "position":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 1471
    invoke-static {p3}, Landroidx/car/widget/GridLayoutManagerUtils;->getFirstRowItemCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1474
    iget v1, p0, Landroidx/car/widget/PagedListView$TopOffsetDecoration;->mTopOffset:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1475
    :cond_0
    if-nez v0, :cond_1

    .line 1477
    iget v1, p0, Landroidx/car/widget/PagedListView$TopOffsetDecoration;->mTopOffset:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1479
    :cond_1
    :goto_0
    return-void
.end method
