.class Landroid/support/v17/leanback/widget/GridLayoutManager$4;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 2724
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .line 2727
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2728
    const/4 v0, 0x0

    return-object v0

    .line 2730
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2733
    .local v0, "firstChildPos":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-le p1, v0, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    if-ge p1, v0, :cond_1

    goto :goto_0

    :goto_1
    move v1, v2

    .line 2736
    .local v1, "isStart":Z
    if-eqz v1, :cond_3

    const/4 v3, -0x1

    nop

    :cond_3
    move v2, v3

    .line 2737
    .local v2, "direction":I
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 2738
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v5, v2

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 2740
    :cond_4
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method
