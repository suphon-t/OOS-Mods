.class public abstract Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10450
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10451
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10475
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 10477
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10418
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10409
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10410
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10440
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10431
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 10432
    return-void
.end method
