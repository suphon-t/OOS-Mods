.class Lcom/android/systemui/fingerprint/FingerprintDialogView$4;
.super Ljava/lang/Object;
.source "FingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field final synthetic val$endActionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 405
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->val$endActionRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 411
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 412
    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 417
    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 418
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 419
    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;->val$endActionRunnable:Ljava/lang/Runnable;

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 423
    return-void
.end method
