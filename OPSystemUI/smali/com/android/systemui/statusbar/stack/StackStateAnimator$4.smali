.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$isRubberbanded:Z

.field final synthetic val$onTop:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$onTop:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$isRubberbanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 534
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 535
    .local v0, "currentOverScroll":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, v1, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$onTop:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;->val$isRubberbanded:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 538
    return-void
.end method
