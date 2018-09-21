.class Lcom/android/keyguard/KeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$3;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$3;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPinView$3;

    .line 475
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$302(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$700(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$700(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 484
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$302(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$402(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 490
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$202(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 492
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_5

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_2

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$202(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 499
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-ne v0, v3, :cond_3

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    .line 502
    invoke-static {v1, v3, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 505
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$800(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110343

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    :cond_4
    :goto_1
    const-string v0, "KeyguardSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 528
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$902(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 529
    return-void
.end method
