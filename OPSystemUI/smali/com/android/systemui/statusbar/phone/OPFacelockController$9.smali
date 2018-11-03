.class Lcom/android/systemui/statusbar/phone/OPFacelockController$9;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$bouncerShow:Z

.field final synthetic val$liveWP:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 978
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->val$liveWP:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->val$bouncerShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 982
    const/4 v0, 0x5

    .line 984
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->val$liveWP:Z

    if-nez v1, :cond_0

    .line 985
    const/4 v0, 0x1

    goto :goto_1

    .line 986
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->val$bouncerShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 988
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->willDismissWithAction()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 991
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 992
    const/4 v0, 0x0

    .line 993
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->forceHideBouncer()V

    goto :goto_1

    .line 989
    :cond_2
    :goto_0
    const/4 v0, 0x6

    goto :goto_1

    .line 998
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->val$liveWP:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 1000
    const/4 v0, 0x0

    goto :goto_1

    .line 1002
    :cond_4
    const/4 v0, 0x5

    .line 1007
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetFPTimeout()V

    .line 1009
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1011
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$2400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setAlpha(F)V

    .line 1013
    :cond_6
    return-void
.end method
