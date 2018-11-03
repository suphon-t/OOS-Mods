.class Lcom/android/keyguard/PasswordTextView$CharState$7;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextView$CharState;

    .line 450
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v0

    .line 454
    .local v0, "textVisibleBefore":Z
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget v1, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 455
    .local v1, "beforeTextSizeFactor":F
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 456
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->isCharVisibleForA11y()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iput v1, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 458
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v2, v2, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v2}, Lcom/android/keyguard/PasswordTextView;->access$500(Lcom/android/keyguard/PasswordTextView;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 459
    .local v2, "beforeText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 460
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v3, v3, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->access$200(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 461
    .local v3, "indexOfThisChar":I
    if-ltz v3, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v4, v4, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    .line 466
    .end local v2    # "beforeText":Ljava/lang/CharSequence;
    .end local v3    # "indexOfThisChar":I
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v2, v2, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->invalidate()V

    .line 467
    return-void
.end method
