.class public interface abstract Lcom/android/keyguard/KeyguardSecurityView;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"


# virtual methods
.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isCheckingPassword()Z
.end method

.method public abstract needsInput()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
.end method

.method public abstract setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
.end method

.method public abstract showMessage(Ljava/lang/CharSequence;I)V
.end method

.method public abstract showPromptReason(I)V
.end method

.method public abstract startAppearAnimation()V
.end method

.method public abstract startDisappearAnimation(Ljava/lang/Runnable;)Z
.end method
