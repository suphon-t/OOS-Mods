.class Lcom/android/systemui/fingerprint/FingerprintDialogView$1;
.super Ljava/lang/Object;
.source "FingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 182
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 186
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 187
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 188
    invoke-static {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 194
    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    return-void
.end method
