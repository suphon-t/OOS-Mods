.class Landroid/support/design/widget/BottomSheetBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .line 745
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 851
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 845
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    .line 846
    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$100(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 845
    :goto_0
    invoke-static {p2, v0, v1}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 856
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    return v0

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 773
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 774
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 776
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 768
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 769
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 782
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x4

    if-gez v1, :cond_2

    .line 783
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 785
    .local v0, "top":I
    const/4 v2, 0x3

    .local v2, "targetState":I
    :goto_0
    goto/16 :goto_5

    .line 787
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 788
    .local v0, "currentTop":I
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_1

    .line 789
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 790
    .local v1, "top":I
    const/4 v2, 0x6

    .line 793
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_1
    move v0, v1

    goto :goto_2

    .line 792
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_1
    const/4 v1, 0x0

    .line 793
    .restart local v1    # "top":I
    const/4 v2, 0x3

    .end local v0    # "currentTop":I
    goto :goto_1

    .line 795
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_2
    goto/16 :goto_5

    .line 796
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v1, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 797
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 798
    .restart local v0    # "top":I
    const/4 v2, 0x5

    goto :goto_0

    .line 799
    .end local v0    # "top":I
    :cond_3
    cmpl-float v0, p3, v0

    if-nez v0, :cond_9

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 801
    .local v0, "currentTop":I
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 802
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v2, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 803
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 804
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 805
    .restart local v1    # "top":I
    const/4 v2, 0x3

    .line 826
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_3
    move v0, v1

    goto :goto_4

    .line 807
    .end local v2    # "targetState":I
    .local v0, "currentTop":I
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 808
    .restart local v1    # "top":I
    const/4 v2, 0x4

    goto :goto_3

    .line 811
    .end local v1    # "top":I
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_7

    .line 812
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 813
    const/4 v1, 0x0

    .line 814
    .restart local v1    # "top":I
    const/4 v2, 0x3

    goto :goto_3

    .line 816
    .end local v1    # "top":I
    :cond_6
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 817
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_3

    .line 820
    .end local v1    # "top":I
    :cond_7
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v3, v0, v3

    .line 821
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 822
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 823
    .restart local v1    # "top":I
    const/4 v2, 0x6

    goto :goto_3

    .line 825
    .end local v1    # "top":I
    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 826
    .restart local v1    # "top":I
    nop

    .end local v0    # "currentTop":I
    goto :goto_3

    .line 830
    .end local v1    # "top":I
    .local v0, "top":I
    .restart local v2    # "targetState":I
    :goto_4
    goto :goto_5

    .line 831
    .end local v0    # "top":I
    .end local v2    # "targetState":I
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 832
    .restart local v0    # "top":I
    nop

    .restart local v2    # "targetState":I
    :goto_5
    move v1, v2

    .line 834
    .end local v2    # "targetState":I
    .local v1, "targetState":I
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 835
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 836
    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v2, v3, p1, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_6

    .line 839
    :cond_a
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 841
    :goto_6
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 749
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior$2;, "Landroid/support/design/widget/BottomSheetBehavior$2;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 750
    return v2

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    if-eqz v0, :cond_1

    .line 753
    return v2

    .line 755
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    if-ne v0, p2, :cond_2

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 757
    .local v0, "scroll":Landroid/view/View;
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 759
    return v2

    .line 762
    .end local v0    # "scroll":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$2;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method
