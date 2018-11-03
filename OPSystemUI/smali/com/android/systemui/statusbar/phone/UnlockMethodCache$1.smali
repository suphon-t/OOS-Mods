.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceUnlockStateChanged(ZI)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 151
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 139
    const-string v0, "KeyguardUpdateMonitorCallback#onFingerprintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$100(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 145
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 146
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 166
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 161
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 135
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 156
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 125
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 130
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 120
    return-void
.end method
