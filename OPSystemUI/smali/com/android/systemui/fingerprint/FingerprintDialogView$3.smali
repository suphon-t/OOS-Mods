.class Lcom/android/systemui/fingerprint/FingerprintDialogView$3;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 417
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 429
    return-void
.end method
