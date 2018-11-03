.class Lcom/android/keyguard/PasswordTextView$CharState$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextView.java"


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

    .line 419
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$3;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$3;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 423
    return-void
.end method
