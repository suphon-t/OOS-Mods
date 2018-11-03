.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J

.field final synthetic val$notCancelledEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .line 651
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 657
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    .line 659
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 663
    const-wide/16 v0, 0x0

    .line 664
    .local v0, "delay":J
    iget-wide v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 665
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endDelay:J

    goto :goto_0

    .line 666
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-eqz v2, :cond_1

    .line 667
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    .line 671
    :cond_2
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    .line 672
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-nez v2, :cond_3

    .line 673
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 675
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 677
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-nez v2, :cond_5

    .line 678
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    :goto_1
    return-void
.end method
