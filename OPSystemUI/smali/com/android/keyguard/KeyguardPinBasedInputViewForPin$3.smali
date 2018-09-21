.class Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 220
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->deleteLastChar()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->doHapticKeyClick()V

    .line 228
    return-void
.end method
