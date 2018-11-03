.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1039
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 1103
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 1093
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 1083
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 1053
    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 1113
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1043
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    .line 1120
    return-void
.end method
