.class Lcom/android/systemui/fingerprint/FingerprintDialogView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintDialogView.java"


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

    .line 732
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .line 777
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    .line 778
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFacelockStateChanged: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 781
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 784
    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 801
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 802
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthenticated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1202(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 804
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    .line 809
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .line 744
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 745
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 767
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 769
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 773
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 735
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 736
    const-string v0, "FingerprintDialogView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 738
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 740
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 758
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 759
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z

    .line 761
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 763
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 749
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 750
    const-string v0, "FingerprintDialogView"

    const-string v1, "onStartedWakingUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->access$900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/CircleImageView;->setAlpha(F)V

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 754
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 788
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 790
    const/4 v0, 0x1

    .line 791
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 794
    :cond_0
    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStrongAuthStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 796
    :cond_1
    return-void
.end method
