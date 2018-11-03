.class public abstract Landroidx/car/widget/PagedListView$OnScrollListener;
.super Ljava/lang/Object;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# virtual methods
.method public onReachBottom()V
    .locals 0

    .line 1255
    return-void
.end method

.method public onScrollDownButtonClicked()V
    .locals 0

    .line 1259
    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 1274
    return-void
.end method

.method public onScrollUpButtonClicked()V
    .locals 0

    .line 1257
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 1271
    return-void
.end method
