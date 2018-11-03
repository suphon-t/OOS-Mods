.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;
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
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 529
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 532
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 533
    return-void
.end method
