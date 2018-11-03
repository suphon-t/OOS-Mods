.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


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

.field final synthetic val$onTop:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 541
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$onTop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$onTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$702(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$802(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 549
    :goto_0
    return-void
.end method
