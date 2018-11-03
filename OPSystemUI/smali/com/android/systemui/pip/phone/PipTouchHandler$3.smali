.class Lcom/android/systemui/pip/phone/PipTouchHandler$3;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private final mStartPosition:Landroid/graphics/Point;

.field private mStartedOnLeft:Z

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 582
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    .line 585
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 586
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 6
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .line 590
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 595
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 596
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 597
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    .line 598
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1, v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1202(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 599
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-static {v1, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 603
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 604
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->createDismissTarget()V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    return-void
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 12
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .line 615
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    return v1

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1702(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    .line 623
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->showDismissTarget()V

    .line 628
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 630
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 631
    .local v0, "lastDelta":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    .line 632
    .local v2, "lastX":F
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    .line 633
    .local v3, "lastY":F
    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v2

    .line 634
    .local v4, "left":F
    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    .line 635
    .local v5, "top":F
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->allowDraggingOffscreen()Z

    .line 636
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 640
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 646
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v8, v4, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 647
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->y:F

    sub-float v8, v5, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 649
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 650
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 651
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 654
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 657
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object v6

    .line 658
    .local v6, "curPos":Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    .line 660
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v9, :cond_3

    .line 661
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v11}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 660
    :goto_0
    move v9, v8

    goto :goto_2

    .line 661
    :cond_2
    nop

    .line 660
    :goto_1
    move v9, v1

    goto :goto_2

    .line 662
    :cond_3
    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    goto :goto_0

    :cond_4
    goto :goto_1

    .line 660
    :goto_2
    invoke-static {v7, v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1202(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 664
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 666
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget v9, v6, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_6

    move v1, v8

    nop

    :cond_6
    invoke-static {v7, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 668
    :cond_7
    return v8

    .line 670
    .end local v0    # "lastDelta":Landroid/graphics/PointF;
    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "curPos":Landroid/graphics/PointF;
    :cond_8
    return v1
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 18
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    move-object/from16 v0, p0

    .line 678
    iget-object v1, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 682
    return v2

    .line 685
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v1

    .line 686
    .local v1, "vel":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    .line 687
    .local v3, "isHorizontal":Z
    :goto_0
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    .line 688
    .local v5, "velocity":F
    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v2

    .line 689
    .local v6, "isFling":Z
    :goto_1
    const/4 v15, 0x0

    .line 693
    .local v15, "isUpWithinDimiss":Z
    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iget v8, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_4

    if-nez v3, :cond_4

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 694
    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v15, :cond_4

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v2

    :goto_2
    move/from16 v16, v8

    .line 697
    .local v16, "isFlingToBot":Z
    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->shouldDismissPip()Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v16, :cond_5

    goto/16 :goto_8

    .line 706
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 707
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v8, :cond_6

    iget v8, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v8, v7

    if-gez v7, :cond_7

    goto :goto_3

    :cond_6
    iget v8, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_7

    :goto_3
    move v7, v4

    goto :goto_4

    :cond_7
    move v7, v2

    :goto_4
    move/from16 v17, v7

    .line 724
    .local v17, "isFlingToEdge":Z
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 727
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 730
    :cond_8
    const/4 v2, 0x0

    .line 731
    .local v2, "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v7

    if-eqz v7, :cond_9

    .line 734
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v8

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v9

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 735
    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v13

    .line 734
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_5

    .line 739
    :cond_9
    new-instance v7, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;

    invoke-direct {v7, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V

    move-object v2, v7

    .line 747
    :goto_5
    if-eqz v6, :cond_a

    .line 748
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 749
    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v12

    iget-object v14, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 748
    move v8, v5

    move-object v13, v2

    invoke-virtual/range {v7 .. v14}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;

    goto :goto_6

    .line 752
    :cond_a
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    .line 755
    .end local v2    # "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    .end local v17    # "isFlingToEdge":Z
    :goto_6
    goto/16 :goto_7

    :cond_b
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 757
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v9}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    .line 759
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    goto :goto_7

    .line 760
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_f

    .line 761
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 763
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_7

    .line 764
    :cond_d
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result v2

    if-nez v2, :cond_e

    .line 767
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v7

    const/4 v8, 0x2

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 768
    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    const/4 v11, 0x1

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v12

    .line 767
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_7

    .line 773
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    goto :goto_7

    .line 776
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 777
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    .line 779
    :goto_7
    return v4

    .line 698
    :cond_10
    :goto_8
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 699
    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v7

    .line 698
    invoke-static {v2, v7}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureDismissByDrag(Landroid/content/Context;Landroid/util/Pair;)V

    .line 700
    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v7}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 701
    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    .line 700
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    .line 702
    return v4
.end method
