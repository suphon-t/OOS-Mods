.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    .line 2539
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    iput p3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    iput p4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    iput p5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 2542
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 2543
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabIndicator;

    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startLeft:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    .line 2544
    invoke-static {v2, v3, v0}, Landroid/support/design/animation/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$startRight:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    .line 2545
    invoke-static {v3, v4, v0}, Landroid/support/design/animation/AnimationUtils;->lerp(IIF)I

    move-result v3

    .line 2543
    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2546
    return-void
.end method
