.class Lcom/android/systemui/fingerprint/FingerprintDialogView$2;
.super Ljava/lang/Object;
.source "FingerprintDialogView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 249
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 253
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    .line 254
    return v0

    .line 256
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    if-nez v1, :cond_1

    .line 257
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 259
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    if-ne v1, v2, :cond_3

    .line 261
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->downPressed:Z

    .line 262
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    :cond_3
    :goto_0
    return v2
.end method
