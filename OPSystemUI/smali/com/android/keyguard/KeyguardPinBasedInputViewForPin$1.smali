.class Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .line 181
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPasswordAndUnlock()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->doHapticKeyClick()V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->verifyPasswordAndUnlock()V

    .line 193
    :cond_0
    return-void
.end method

.method public onUserActivity()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onUserInput()V

    .line 185
    return-void
.end method
