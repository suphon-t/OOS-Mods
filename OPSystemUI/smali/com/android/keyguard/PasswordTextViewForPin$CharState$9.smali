.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 571
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->invalidate()V

    .line 576
    return-void
.end method
