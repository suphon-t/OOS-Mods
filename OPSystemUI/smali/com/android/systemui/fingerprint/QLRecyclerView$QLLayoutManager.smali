.class public Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QLLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p2, "context"    # Landroid/content/Context;

    .line 355
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 356
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 359
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 360
    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 361
    return-void
.end method


# virtual methods
.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 365
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 366
    .local v0, "scrolled":I
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$700(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$800(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 368
    return v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 373
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->stopScroll()V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$200(Lcom/android/systemui/fingerprint/QLRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager$1;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;Landroid/content/Context;)V

    .line 381
    .local v0, "scroller":Landroidx/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->access$1000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    .line 384
    return-void
.end method
