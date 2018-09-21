.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 491
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 496
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 500
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$300(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$400(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->reset()V

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v1, v1, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->access$500(Lcom/android/keyguard/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V

    .line 505
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 507
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;->mCancelled:Z

    .line 512
    return-void
.end method
