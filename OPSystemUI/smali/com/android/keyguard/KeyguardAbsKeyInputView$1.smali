.class Lcom/android/keyguard/KeyguardAbsKeyInputView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 148
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 151
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result v1

    .line 154
    .local v1, "pinLenth":I
    const/4 v2, 0x0

    .line 155
    .local v2, "textLength":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    .line 161
    :cond_2
    return-void
.end method
