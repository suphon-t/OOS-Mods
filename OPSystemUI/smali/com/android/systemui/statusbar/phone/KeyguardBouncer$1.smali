.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacelockStateChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "notifyMsgId":I
    const/4 v1, -0x1

    .line 84
    .local v1, "notifyColor":I
    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 89
    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    .line 96
    :cond_2
    const/high16 v1, -0x10000

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    .line 99
    return-void

    .line 85
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    .line 109
    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I

    .line 76
    return-void
.end method
