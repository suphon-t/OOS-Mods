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

    .line 431
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDismiss: animatingAway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 445
    return-void
.end method
