.class Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;
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

    .line 201
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->doHapticKeyClick()V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->verifyPasswordAndUnlock()V

    .line 208
    :cond_0
    return-void
.end method
