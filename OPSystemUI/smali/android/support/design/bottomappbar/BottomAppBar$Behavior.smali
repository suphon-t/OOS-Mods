.class public Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Landroid/support/design/bottomappbar/BottomAppBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private updateFabPositionAndVisibility(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 5
    .param p1, "fab"    # Landroid/support/design/widget/FloatingActionButton;
    .param p2, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .line 509
    nop

    .line 510
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 511
    .local v0, "fabLayoutParams":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 513
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 514
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 515
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 517
    .local v2, "drawablePadding":I
    nop

    .line 518
    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 520
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/support/design/bottomappbar/BottomAppBar;
    .param p3, "layoutDirection"    # I

    .line 526
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 529
    .local v3, "dependent":Landroid/view/View;
    instance-of v4, v3, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v4, :cond_0

    .line 530
    move-object v4, v3

    check-cast v4, Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0, v4, p2}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->updateFabPositionAndVisibility(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/bottomappbar/BottomAppBar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    goto :goto_1

    .line 527
    .end local v3    # "dependent":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 537
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 505
    check-cast p2, Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/bottomappbar/BottomAppBar;I)Z

    move-result p1

    return p1
.end method
