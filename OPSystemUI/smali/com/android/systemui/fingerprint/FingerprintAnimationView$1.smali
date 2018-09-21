.class Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;
.super Landroid/os/Handler;
.source "FingerprintAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/FingerprintAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->access$000(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->access$000(Lcom/android/systemui/fingerprint/FingerprintAnimationView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->playAnimation(I)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationView$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->stopAnimation()V

    .line 78
    nop

    .line 85
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
