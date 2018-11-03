.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardHostView;

    .line 79
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    .line 126
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityIcon()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 130
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    .line 115
    .local v0, "showing":Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "KeyguardViewBase"

    const-string/jumbo v2, "update security icon when occluded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityIcon()V

    .line 119
    :cond_0
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 88
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->isVisibleToUser()Z

    move-result v0

    .line 91
    .local v0, "bouncerVisible":Z
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 93
    .local v1, "initiatedByUser":Z
    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 96
    .local v3, "dismissKeyguard":Z
    :goto_1
    if-nez v1, :cond_4

    if-eqz v3, :cond_8

    .line 97
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_5

    if-eqz v3, :cond_7

    .line 98
    :cond_5
    if-nez v0, :cond_6

    .line 102
    const-string v4, "KeyguardViewBase"

    const-string v5, "TrustAgent dismissed Keyguard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v4, v2, p2}, Lcom/android/keyguard/KeyguardHostView;->dismiss(ZI)Z

    goto :goto_2

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    .line 109
    :cond_8
    :goto_2
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 84
    return-void
.end method
